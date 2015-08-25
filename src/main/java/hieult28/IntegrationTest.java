package hieult28;

import com.fis.cdd.core.lister.CDDFile;
import com.fis.cdd.core.lister.FileLister;
import com.fis.cdd.core.scanner.FileScanner;
import com.fis.cdd.core.scanner.MatchInstance;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.scantype.WindowsFileSystemAgent;
import com.fis.cdd.profile.profiles.OperationSystemProfile;
import com.fis.cdd.profile.profiles.ResultLog;

import java.util.*;

/**
 * Created by Hieu Le on 8/10/15.
 */
public class IntegrationTest {

    public static void main(String[] args) {
        final OperationSystemProfile profile = new WindowsFileSystemAgent();
        profile.setProfileName("Profile0");

        // Configure directory search
        Set<String> dirSet = new HashSet<>();
        dirSet.add("/");
        SearchConfig.SearchOption dirOption = SearchConfig.SearchOption.COMPREHENSIVE;
        SearchConfig dirConfig = new SearchConfig(dirOption, dirSet);

        // Configure extension search
        Set<String> extSet = new HashSet<>();
        String[] extensions = new String[] {"txt", "docx", "pdf", "doc", "odt"};
        for (String ext : extensions) extSet.add(ext);
        SearchConfig.SearchOption extOption = SearchConfig.SearchOption.INCLUSIVE;
        SearchConfig extConfig = new SearchConfig(extOption, extSet);

        profile.setDirConfig(dirConfig);
        profile.setExtConfig(extConfig);


        final ResultLog log = profile.getLog();
        final long startTime = System.currentTimeMillis();

        TimerTask task = new TimerTask() {
            @Override
            public void run() {
                System.out.println("Scanned files: " + log.countDoneFiles() + " Found files: " + log.countTotalFiles()
                + " Percent: " + String.format("%4.1f", log.getProgress()) + " % Findings: " + log.getTotalFindCount()
                + " " + ((log.getCurrentDirectory() != null) ? log.getCurrentDirectory().getName() : "") +
                        " Time elapsed: " + (System.currentTimeMillis() - startTime) / 1000);
            }
        };
        Timer timer = new Timer();
        timer.schedule(task, 0, 1000);
        // List all files to be scanned
        FileLister lister = new FileLister(profile);
        List<CDDFile> fileList = lister.listFiles();

        FileScanner scanner = new FileScanner(profile);
        scanner.scan(fileList);

        timer.cancel();

        // Print result log
//        System.out.println(log.getTotalFindCount());
//        for (MatchInstance instance : log.getInstanceList())
//            System.out.println(instance.getSubstring());
    }
}
