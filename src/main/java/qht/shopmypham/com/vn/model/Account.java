package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Account implements Serializable {
    int idA;
    String user;
    String pass;
    String fullName;
    String phone;
    String address;
    String email;
    String img;
    String idFacebook;
    String idGoogle;
    int orderManage, generalManage, productManage, accountManage, blogManage, status, homeManage;

    public Account() {
    }

    public Account(int idA, String user, String pass, String fullName, String phone, String address, String email, String img, String idFacebook, String idGoogle, int orderManage, int generalManage, int productManage, int accountManage, int blogManage, int status, int homeManage) {
        this.idA = idA;
        this.user = user;
        this.pass = pass;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.img = img;
        this.idFacebook = idFacebook;
        this.idGoogle = idGoogle;
        this.orderManage = orderManage;
        this.generalManage = generalManage;
        this.productManage = productManage;
        this.accountManage = accountManage;
        this.blogManage = blogManage;
        this.status = status;
        this.homeManage = homeManage;
    }

    @Override
    public String toString() {
        return "Account{" +
                "idA=" + idA +
                ", user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                ", fullName='" + fullName + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", img='" + img + '\'' +
                ", idFacebook='" + idFacebook + '\'' +
                ", idGoogle='" + idGoogle + '\'' +
                ", orderManage=" + orderManage +
                ", generalManage=" + generalManage +
                ", productManage=" + productManage +
                ", accountManage=" + accountManage +
                ", blogManage=" + blogManage +
                ", status=" + status +
                ", homeManage=" + homeManage +
                '}';
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getIdFacebook() {
        return idFacebook;
    }

    public void setIdFacebook(String idFacebook) {
        this.idFacebook = idFacebook;
    }

    public String getIdGoogle() {
        return idGoogle;
    }

    public void setIdGoogle(String idGoogle) {
        this.idGoogle = idGoogle;
    }

    public int getOrderManage() {
        return orderManage;
    }

    public void setOrderManage(int orderManage) {
        this.orderManage = orderManage;
    }

    public int getGeneralManage() {
        return generalManage;
    }

    public void setGeneralManage(int generalManage) {
        this.generalManage = generalManage;
    }

    public int getProductManage() {
        return productManage;
    }

    public void setProductManage(int productManage) {
        this.productManage = productManage;
    }

    public int getAccountManage() {
        return accountManage;
    }

    public void setAccountManage(int accountManage) {
        this.accountManage = accountManage;
    }

    public int getBlogManage() {
        return blogManage;
    }

    public void setBlogManage(int blogManage) {
        this.blogManage = blogManage;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getHomeManage() {
        return homeManage;
    }

    public void setHomeManage(int homeManage) {
        this.homeManage = homeManage;
    }
}
