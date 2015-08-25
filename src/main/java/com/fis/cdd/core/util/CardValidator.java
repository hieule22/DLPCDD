package com.fis.cdd.core.util;

/**
 * Created by Hieu Le on 7/24/15.
 * Validate if a serial number represents a valid card number
 * based on Luhn's algorithm
 */
public class CardValidator {

    // Return True if an input card number is consistent with
    // Luhn's algorithm
    public static boolean check(String cardNumber) {
        // Truncate all non-numeric characters from the string
        String number = truncate(cardNumber);

        int sum = 0;
        boolean alternate = false;
        for (int i = number.length() - 1; i >= 0; i--) {
            int n = Integer.parseInt(number.substring(i, i + 1));
            if (alternate) {
                n *= 2;
                if (n > 9)
                    n = (n % 10) + 1;
            }
            sum += n;
            alternate = !alternate;
        }
        return (sum % 10 == 0);
    }

    // Truncate all non-numeric characters from an input string
    private static String truncate(String s) {
        StringBuilder res = new StringBuilder("");
        for (int i = 0; i < s.length(); i++) {
            char cur = s.charAt(i);
            if (Character.isDigit(cur))
                res.append(cur);
        }
        return res.toString();
    }
}
