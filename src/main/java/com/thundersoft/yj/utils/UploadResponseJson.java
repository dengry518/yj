package com.thundersoft.yj.utils;

/**
 * webupload文件上传响应的格式
 * Created by dengry on 2016/8/19.
 */
public class UploadResponseJson {
    private String state;
    private String original;//原始图片名称
    private Long size;


    private String type;
    private String url;

    private String name;//上传到服务器后图片名称


    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getOriginal() {
        return original;
    }

    public void setOriginal(String original) {
        this.original = original;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
