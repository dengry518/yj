package com.thundersoft.yj.entity;

public class Img {
    private Integer id;
    private byte isDef;
    private long size;
    private String type;
    private String url;
    private Product product;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public byte getIsDef() {
        return isDef;
    }

    public void setIsDef(byte isDef) {
        this.isDef = isDef;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
