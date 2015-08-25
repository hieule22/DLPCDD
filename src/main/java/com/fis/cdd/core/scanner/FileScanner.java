package com.fis.cdd.core.scanner;

import com.fis.cdd.core.lister.CDDFile;
import com.fis.cdd.core.util.CardValidator;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.AutoDetectParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.sax.ContentHandlerDecorator;
import org.xml.sax.SAXException;

import com.fis.cdd.profile.entity.Card;
import com.fis.cdd.profile.profiles.Profile;
import com.fis.cdd.profile.profiles.ResultLog;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Hieu Le on 7/21/15.
 * Scan a list of file for instances of given regular expressions.
 */
public class FileScanner {

    //The maximum number of characters by which each text chunk must be bounded
    // This constant is in effect redundant, for observations show that the length
    // of each character array returned by Tika never exceeds 4096.
    private static final int CHUNK_SIZE = 8 * 1024;
    // The number of characters to be rescanned each time a new chunk is read in,
    // in order to avoid skipping patterns that overlap two consecutive chunks
    private static final int BACK_TRACK = 100;
    // The associated profile
    private Profile profile;
    // The associated log
    private ResultLog log;
    // List of card types to be detected
    private List<Card> cardList;
    // The combined pattern compiled from regexList
    private Pattern pattern;

    public FileScanner(Profile newProfile) {
        profile = newProfile;
        log = profile.getLog();
        cardList = profile.getRegularExpressions().getCardList();
        // Compile pattern from regexes obtained from card list
        compilePattern();
    }

    // Combine all selected regular expressions into one single regex
    // e.g {"ab", "mn", "xy"} to "(ab)|(mn)|(xy)"
    private void compilePattern() {
        log.updateStep("Pattern compilation starts");
        StringBuilder sb = new StringBuilder();
        // Iterate through cardList to get individual regexes
        for (Card card : cardList) {
            String regex = card.getRegex();
            sb.append("(").append(regex).append(")|");
        }
        // Remove the redundant '|' at the end
        sb.deleteCharAt(sb.length() - 1);
        pattern = Pattern.compile(sb.toString());
        log.updateStep("Pattern compilation finishes");
    }

    // Scan fileList for instances of specified regex
    public void scan(List<CDDFile> fileList) {
        log.updateStep("Scanning starts!");
        for (CDDFile file : fileList) {
            scan(file);
        }
        log.updateStatus(ResultLog.Status.DONE);
        log.updateStep("Scanning finishes");
    }

    // Scan individual files
    public void scan(CDDFile file) {
        try {
            // Updat current directory
            log.setCurrentDirectory(file);
            parse(file);
            // Update scanned byte count
            log.setBytesDone(log.countDoneBytes() + file.length());
            // Update scanned file count
            log.setFilesDone(log.countDoneFiles() + 1);
            // Update progress
            log.setProgress(log.getBytesDone() * 100.0 / log.getBytesTotal());
            // Update lastScanTime
            file.setLastScan(Calendar.getInstance().getTime());
        } catch (IOException | TikaException | SAXException e) {
            // Possible exceptions might arise when the file is corrupt, encrypted or unreadable
            e.printStackTrace();
            return;
        }
    }

    // Parse a file into processable text using Apache Tika
    private void parse(final CDDFile file) throws IOException, TikaException, SAXException {
        InputStream stream = null;
        try {
            stream = new FileInputStream(file.getAbsolutePath());
            final ScanTracker report  = new ScanTracker(file);
            ContentHandlerDecorator handler = new ContentHandlerDecorator() {
                @Override
                public void characters(char[] ch, int start, int length) throws SAXException {
                    int end = start + length - 1;
                    // Split the character array into text chunks bounded by CHUNK_SIZE
                    while (start <= end) {
                        StringBuilder chunk = new StringBuilder();
                        int remain = end - start + 1;
                        // If remaining suffix fits within CHUNK_SIZE then retain the
                        // entire suffix. Else keep appending till CHUNK_SIZE is met
                        if (remain <= CHUNK_SIZE)
                            chunk.append(ch, start, remain);
                        else
                            chunk.append(ch, start, CHUNK_SIZE);
                        start += CHUNK_SIZE; // Increment start index
                        scanChunk(chunk, report);
                    }
                }
            };
            AutoDetectParser parser = new AutoDetectParser();
            parser.parse(stream, handler, new Metadata(), new ParseContext());
        } finally {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    // Scan each text chunk for match instances, then update the corresponding ScanProfile
    private void scanChunk(CharSequence chunk, ScanTracker report) {
        StringBuilder suffix = report.getCurSuffix();
        int charOffset = report.getCurCharOffset();
        int charCount = report.getCharCount();
        int length = suffix.length();
        // If the last matched substring lies outside the backtracking distance,
        // then retain the entire suffix bounded by BACK_TRACK. Otherwise, retain
        // only suffix after the last matched substring
        if (length - charOffset - 1 < BACK_TRACK) {
            suffix.delete(0, charOffset + 1);
            charCount -= length - charOffset - 1;
        } else {
            suffix.delete(0, length - BACK_TRACK);
            charCount -= BACK_TRACK;
        }
        suffix.append(chunk); // Append the new chunk to the current suffix
        Matcher matcher = pattern.matcher(suffix);
        // Update log
        int offset = 0;
        while (matcher.find()) { // Check for syntactically valid card
            String number = matcher.group();
            // Check if this card number satisfies Luhn's algorithm
            if (CardValidator.check(number)) {
                offset = matcher.end();
                int offsetIndex = charCount + matcher.start() + 1;
                MatchInstance newInstance = generateInstance(report, number, offsetIndex);
                if (newInstance != null) {
                    log.getInstanceList().add(newInstance);
                    log.setTotalFindCount(log.countTotalFindings() + 1);
                }
            }
        }
        report.setCharCount(report.getCharCount() + chunk.length());
        report.setCurCharOffset(offset - 1);
    }

    // Identify the matched card type and generate a corresponding match instance
    private MatchInstance generateInstance(ScanTracker report, String substring, int offset) {
        boolean found = false;
        String cardName = null;
        // Scan regex list for the card type that matches
        for (int i = 0; i < cardList.size() && !found; i++) {
            Pattern singlePattern = cardList.get(i).getPattern();
            Matcher matcher = singlePattern.matcher(substring);
            if (matcher.matches()) {
                cardName = cardList.get(i).getName();
                found = true;
            }
        }
        // Return null if no relevant card is detected
        if (cardName == null) throw null;
        String pathname = report.getFile().getAbsolutePath();
        return new MatchInstance(cardName, substring, pathname, offset, profile.isMaskSentitiveData());
    }

    /**
     * An object that stores information regarding a file's scan
     * Created by Hieu Le on 7/21/15.
     */
    static class ScanTracker {
        // The coupled CDDFile object
        private CDDFile file;
        // The suffix that needs to be retained
        private StringBuilder curSuffix;
        // The position of the last character of the last matched substring
        // in curSuffix, set to -1 if no match is found in this suffix
        private int curCharOffset;
        // The total number of characters read in so far
        private int charCount;

        public ScanTracker(CDDFile file) {
            this.file = file;
            curSuffix = new StringBuilder();
            curCharOffset = -1;
            charCount = 0;
        }

        public CDDFile getFile() {
            return file;
        }

        public void setFile(CDDFile file) {
            this.file = file;
        }

        public StringBuilder getCurSuffix() {
            return curSuffix;
        }

        public void setCurSuffix(StringBuilder curSuffix) {
            this.curSuffix = curSuffix;
        }

        public int getCurCharOffset() {
            return curCharOffset;
        }

        public void setCurCharOffset(int curCharOffset) {
            this.curCharOffset = curCharOffset;
        }

        public int getCharCount() {
            return charCount;
        }

        public void setCharCount(int charCount) {
            this.charCount = charCount;
        }
    }
}
