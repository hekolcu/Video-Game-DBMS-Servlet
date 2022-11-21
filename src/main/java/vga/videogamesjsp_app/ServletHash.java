package com.example.servletproject1;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ServletHash {
    final protected static char[] hexArray = "0123456789ABCDEF".toCharArray();
    private static String SALT = "___HEKOLCU_SALT_PEPPER___"; // Change this to something else.

    public static String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[bytes.length * 2];
        int v;
        for (int j = 0; j < bytes.length; j++) {
            v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v / 16];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }

    // A password hashing method.
    public static String hashPassword(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(SALT.getBytes());
            md.update(input.getBytes());
            md.update(SALT.getBytes());
            byte[] out = md.digest();
            return bytesToHex(out);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }
}
