package com.gtafe.dto;

/**
 * Desc: 通用消息数据传输对象
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-4-25
 * Time: 下午5:07
 */
public class Message {
    private String message;
    private String uri;
    private String time;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public enum level {
        INFO, WARNING, ERROR
    }

    public Message() {
    }

    public Message(String message, String uri, String time) {
        this.message = message;
        this.uri = uri;
        this.time = time;
    }
}
