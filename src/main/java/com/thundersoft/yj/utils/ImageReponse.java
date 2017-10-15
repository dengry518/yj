package com.thundersoft.yj.utils;

/**
 * Created by dengry on 2017/1/21.
 */
public class ImageReponse {
    private String url;
    private String mtime;

    public ImageReponse(String url, String mtime) {
        this.url = url;
        this.mtime = mtime;
    }

    public ImageReponse() {
    }

    public ImageReponse(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getMtime() {
        return mtime;
    }

    public void setMtime(String mtime) {
        this.mtime = mtime;
    }
}
