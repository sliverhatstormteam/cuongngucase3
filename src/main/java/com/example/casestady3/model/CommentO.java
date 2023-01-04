package com.example.casestady3.model;

public class CommentO {
    private int id;
    private String comment;

    public CommentO() {
    }

    public CommentO(int id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
