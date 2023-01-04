package com.example.casestady3.model;

public class Account {
    private int id;
    private String username;
    private String password;
    private String img;
    private String role;

    private String email;
    private String address;
    private String phone;

    public Account(int id, String username, String password, String role, String email, String address, String phone, String img) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.img = img;
        this.role = role;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }
    public Account( String username, String password, String role, String email, String address, String phone, String img) {
        this.username = username;
        this.password = password;
        this.img = img;
        this.role = role;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }
    public Account() {
    }
    public Account(int id, String username, String password, String email, String address, String phone, String img) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.img = img;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }
    public Account(String username, String password, String email, String address, String phone, String img) {
        this.username = username;
        this.password = password;
        this.img = img;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
