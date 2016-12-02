package ru.innopolis.nikn.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import static java.security.MessageDigest.getInstance;

/**
 * Util for password crypt.
 */
public class CryptUtil {

    private static MessageDigest messageDigest;

    static {
        try {
            messageDigest = getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    /**
     * Return crypt @msg.
     * @param msg String
     * @return String
     */
    public static String cript(String msg){
        messageDigest.update(msg.getBytes());
        return new String(messageDigest.digest());
    }

}
