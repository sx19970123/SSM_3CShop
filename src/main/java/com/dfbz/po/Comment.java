package com.dfbz.po;

public class Comment {
    private int commodity_id;
    private int user_id;
    private String comment;
    private String comment_type;
    private String user_name;
    private String user_photo;

    public Comment(int commodity_id, int user_id, String comment, String comment_type, String user_name, String user_photo) {
        this.commodity_id = commodity_id;
        this.user_id = user_id;
        this.comment = comment;
        this.comment_type = comment_type;
        this.user_name = user_name;
        this.user_photo = user_photo;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getComment_type() {
        return comment_type;
    }

    public void setComment_type(String comment_type) {
        this.comment_type = comment_type;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_photo() {
        return user_photo;
    }

    public void setUser_photo(String user_photo) {
        this.user_photo = user_photo;
    }

    public Comment() {
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commodity_id=" + commodity_id +
                ", user_id=" + user_id +
                ", comment='" + comment + '\'' +
                ", comment_type='" + comment_type + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_photo='" + user_photo + '\'' +
                '}';
    }
}
