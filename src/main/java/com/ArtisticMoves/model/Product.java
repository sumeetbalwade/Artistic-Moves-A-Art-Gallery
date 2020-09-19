package com.ArtisticMoves.model;
import java.util.Date;
public class Product {
    private String userType, title, shop, content;
    private int id, quantity;
    private float price;
    private Date CreateDate, PublishedDate;

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShop() {
        return shop;
    }

    public void setShop(String shop) {
        this.shop = shop;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getquantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(Date CreateDate) {
        this.CreateDate = CreateDate;
    }


    public Date getPublishedDate() {
        return PublishedDate;
    }

    public void setPublishedDate(Date PublishedDate) {
        this.PublishedDate = PublishedDate;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }



    @Override
    public String toString() {
        return "Product{" +
                ", id=" + id +
                "  userType='" + userType + '\'' +
                ", title='" + title + '\'' +
                ", price='" + price + '\'' +
                ", quantity='" + quantity + '\'' +
                ", shop='" + shop + '\'' +
                ", CreateDate='" + CreateDate + '\'' +
                ", PublishedDate='" + PublishedDate + '\'' +
                ", content='" + content + '\'' +

                '}';
    }
}
