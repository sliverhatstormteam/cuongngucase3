package com.example.casestady3.model;

public class CommentHihi {
    private int userId;
    private String content;
    private int productID;
    private String userName;
    private String img;

    public CommentHihi() {
    }

    public CommentHihi(int userId, String content, int productID) {
        this.userId = userId;
        this.content = content;
        this.productID = productID;
    }

    public CommentHihi(int userId, String content, int productID, String userName, String img) {
        this.userId = userId;
        this.content = content;
        this.productID = productID;
        this.userName = userName;
        this.img = img;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
