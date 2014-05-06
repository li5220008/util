package com.gtafe.util;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-2-28
 * Time: 下午2:36
 */
public class ServiceUtils {

    /**
     * md5加密
     *
     * @return
     */
    public static String md5(String message) {
        try {
            if(message == null) return null;
            //获取一个消息加密算法
            MessageDigest md = MessageDigest.getInstance("md5");
            //把消息转换成字节数组，进行加密
            byte[] digest = md.digest(message.getBytes());
            /*(不安全)
            //新建一个BASE64编码器
            BASE64Encoder encoder = new BASE64Encoder();
            //对字节数组进行BASE64编码
            return encoder.encode(digest);*/
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0; offset < digest.length; offset++) {//做相应的转化（十六进制）
                i = digest[offset];
                if (i < 0) i += 256;
                if (i < 16) buf.append("0");
                buf.append(Integer.toHexString(i));
                //   System.out.println("32result: " + buf.toString());// 32位的加密
                //   System.out.println("16result: " + buf.toString().substring(8, 24));// 16位的加密
            }
            //return buf.toString().substring(8, 24);
            return buf.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
