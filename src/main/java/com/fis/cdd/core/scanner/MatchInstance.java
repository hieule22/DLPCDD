package com.fis.cdd.core.scanner;

/**
 * Created by Hieu Le on 7/21/15.
 */
public class MatchInstance {

    private String cardName;
    private String substring;
    private String pathname;
    private int charOffset;
    private boolean maskSensitiveData;
    private static final char MASK = 'X';

    public MatchInstance(String cardName, String substring, String pathname, int charOffset,
                         boolean maskSensitiveData) {
        this.cardName = cardName;
        setSubstring(substring, maskSensitiveData);
        this.pathname = pathname;
        this.charOffset = charOffset;
        this.maskSensitiveData = maskSensitiveData;
    }

    public MatchInstance() {
        super();
        maskSensitiveData = true;
    }

    public String getCardName() {
        return cardName;
    }

    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    public String getSubstring() {
        if (maskSensitiveData)
            return mask(substring);
        else
            return substring;
    }

    public void setSubstring(String substring, boolean maskData) {
        this.substring = trimNonNumeric(substring);
        maskSensitiveData = maskData;
    }

    public String getPathname() {
        return pathname;
    }

    public void setPathname(String pathname) {
        this.pathname = pathname;
    }

    public int getCharOffset() {
        return charOffset;
    }

    public void setCharOffset(int charOffset) {
        this.charOffset = charOffset;
    }

    @Override
    public String toString() {
        return String.format("%s %s %s %d", getCardName(), getSubstring(),
                getPathname(), getCharOffset());
    }

    // Mask a string by setting its first and last 4 characters to 'X'
    private static String mask(String s) {
        StringBuilder sb = new StringBuilder(s);
        int start = 4;
        int end = 4;
        int maskLength = sb.length() - end;
        for (int i = start; i < maskLength; i++)
            sb.setCharAt(i, MASK);
        return sb.toString();
    }

    // Remove all non-numeric characters preceding or trailing a card number
    // TODO Revision needed! Potential ArrayIndexOutOfBound exception. Author is terrible at handling strings
    private static String trimNonNumeric(String s) {

        int end = s.length();
        int begin = 0;

        while (begin < end && !Character.isDigit(s.charAt(begin)))
            begin++;

        while (end > begin && !Character.isDigit(s.charAt(end - 1)))
            end--;

        return (begin > 0 || end < s.length()) ? s.substring(begin, end) : s;
    }
}
