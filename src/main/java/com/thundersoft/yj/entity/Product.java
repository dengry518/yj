package com.thundersoft.yj.entity;

import java.util.Date;

public class Product {
    private Integer id;

    private String no;

    private String name;

    private Double weight;

    private Byte isNew;

    private Byte isHot;

    private Byte isCommend;

    private Date createTime;

    private String createUserId;

    private Date checkTime;

    private String checkUserId;

    private Byte isShow;

    private byte isDel;//该商品是否上传过多张图片,0表示没有，1表示已上传   0

    //brand_id
    private Brand brand;

    //type_id
    private Type type;

    private String keywords;

    private Integer sales;

    private String feature;//1,2,5

    private String color;

    private String size;

    private String imgUrl;

    private String defimg;

    private Double price;

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    private String description;
    private String packageList;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPackageList() {
        return packageList;
    }

    public void setPackageList(String packageList) {
        this.packageList = packageList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no == null ? null : no.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }


    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public String getCheckUserId() {
        return checkUserId;
    }

    public void setCheckUserId(String checkUserId) {
        this.checkUserId = checkUserId == null ? null : checkUserId.trim();
    }

    public Byte getIsNew() {
        return isNew;
    }

    public void setIsNew(Byte isNew) {
        this.isNew = isNew;
    }

    public Byte getIsHot() {
        return isHot;
    }

    public void setIsHot(Byte isHot) {
        this.isHot = isHot;
    }

    public Byte getIsCommend() {
        return isCommend;
    }

    public void setIsCommend(Byte isCommend) {
        this.isCommend = isCommend;
    }

    public Byte getIsShow() {
        return isShow;
    }

    public void setIsShow(Byte isShow) {
        this.isShow = isShow;
    }

    public byte getIsDel() {
        return isDel;
    }

    public void setIsDel(byte isDel) {
        this.isDel = isDel;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature == null ? null : feature.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }

    public String getDefimg() {
        return defimg;
    }

    public void setDefimg(String defimg) {
        this.defimg = defimg == null ? null : defimg.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Product(Integer id) {
        this.id = id;
    }

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", no='" + no + '\'' +
                ", name='" + name + '\'' +
                ", weight=" + weight +
                ", isNew=" + isNew +
                ", isHot=" + isHot +
                ", isCommend=" + isCommend +
                ", createTime=" + createTime +
                ", createUserId='" + createUserId + '\'' +
                ", checkTime=" + checkTime +
                ", checkUserId='" + checkUserId + '\'' +
                ", isShow=" + isShow +
                ", isDel=" + isDel +
                ", brand=" + brand +
                ", keywords='" + keywords + '\'' +
                ", sales=" + sales +
                ", feature='" + feature + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", defimg='" + defimg + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", packageList='" + packageList + '\'' +
                '}';
    }
}