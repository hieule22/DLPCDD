package com.fis.cdd.core.util;

import java.util.List;
import java.util.Random;
import java.util.Stack;
import java.util.Vector;

/**
 * Randomly generate a 'valid' credit card number
 * Created by Hieu Le on 7/29/15.
 */
public class CardNumberGenerator {

    public static final String[] VISA_PREFIX_LIST = new String[] {"4539",
                "4556", "4916", "4532", "4929", "40240071", "4485", "4716", "4" };

    public static final String[] MASTERCARD_PREFIX_LIST = new String[] {"51",
            "52", "53", "54", "55" };

    public static final String[] AMEX_PREFIX_LIST = new String[] { "34", "37" };

    public static final String[] DISCOVER_PREFIX_LIST = new String[] { "6011" };

    public static final String[] DINERS_PREFIX_LIST = new String[] { "300",
            "301", "302", "303", "36", "38" };

    public static final String[] ENROUTE_PREFIX_LIST = new String[] { "2014",
            "2149" };

    public static final String[] JCB_16_PREFIX_LIST = new String[] { "35" };

    public static final String[] JCB_15_PREFIX_LIST = new String[] { "2131", "1800" };

    public static final String[] VOYAGER_PREFIX_LIST = new String[] { "8699" };


    public static String[] generateCardNumbers(String[] prefixList, int length, int howMany) {
        Stack<String> result = new Stack<String>();
        for (int i = 0; i < howMany; i++) {
            int randomArrayIndex = (int) Math.floor(Math.random()
                    * prefixList.length);
            String ccnumber = prefixList[randomArrayIndex];
            result.push(generateNumber(ccnumber, length));
        }

        return result.toArray(new String[result.size()]);
    }

    public static String[] generateMasterCardNumbers(int howMany) {
        return generateCardNumbers(MASTERCARD_PREFIX_LIST, 16, howMany);
    }

    public static String[] generateJCBNumbers(int howMany) {
        int sixteen = (int) (howMany * Math.random());
        int fifteen = howMany - sixteen;
        String[] list16 = generateCardNumbers(JCB_16_PREFIX_LIST, 16, sixteen);
        String[] list15 = generateCardNumbers(JCB_15_PREFIX_LIST, 15, fifteen);
        String[] res = new String[list15.length + list16.length];
        for (int i = 0; i < list16.length; i++)
            res[i] = list16[i];
        for (int i = list16.length; i < res.length; i++)
            res[i] = list15[i - list16.length];
        shuffle(res);
        return res;
    }

    /**
     * Fill a credit card number that is consistent with Luhn's algorithm
     * 'prefix' is the start of the credit card number as a string
     * 'length' is the length of the credit card number to generate, typically 13 or 16
     */
    private static String generateNumber(String prefix, int length) {
        String ccnumber = prefix;

        // Generate digits
        while (ccnumber.length() < (length - 1)) {
            ccnumber += new Double(Math.floor(Math.random() * 10)).intValue();
        }

        // Reverse number and convert to int
        String reversedCCnumberString = reverse(ccnumber);

        List<Integer> reversedCCnumberList = new Vector<Integer>();
        for (int i = 0; i < reversedCCnumberString.length(); i++) {
            reversedCCnumberList.add(new Integer(String
                    .valueOf(reversedCCnumberString.charAt(i))));
        }

        // Calculate sum
        int sum = 0;
        int pos = 0;

        Integer[] reversedCCnumber = reversedCCnumberList
                .toArray(new Integer[reversedCCnumberList.size()]);

        while (pos < length - 1) {
            int odd = reversedCCnumber[pos] * 2;
            if (odd > 9) {
                odd -= 9;
            }

            sum += odd;

            if (pos != (length - 2)) {
                sum += reversedCCnumber[pos + 1];
            }
            pos += 2;
        }

        // Calculate check digit
        int checkdigit = new Double(
                ((Math.floor(sum / 10) + 1) * 10 - sum) % 10).intValue();
        ccnumber += checkdigit;

        return ccnumber;
    }

    // Reverse a string
    private static String reverse(String s) {
        if (s == null)
            return "";

        StringBuilder res = new StringBuilder();
        for (int i = s.length() - 1; i >= 0; i--)
            res.append(s.charAt(i));
        return res.toString();
    }


    private static void shuffle(String[] a) {
        Random rnd = new Random();
        for (int i = a.length - 1; i > 0; i--) {
            int index = rnd.nextInt(i + 1);
            // Swap
            String x = a[index];
            a[index] = a[i];
            a[i] = x;
        }
    }

    public static void main(String[] args) {
        for (String number : generateJCBNumbers(10))
            System.out.println(number + " " + CardValidator.check(number));
    }

}
