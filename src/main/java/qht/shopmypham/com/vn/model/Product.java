package qht.shopmypham.com.vn.model;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class Product implements Serializable {
    int idP;
    String name;
    int price;
    int idT;
    String information;
    int idC;


    public Product() {
    }

    public Product(int idP, String name, int price, int idT, String information, int idC) {
        this.idP = idP;
        this.name = name;
        this.price = price;
        this.idT = idT;
        this.information = information;
        this.idC = idC;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getIdT() {
        return idT;
    }

    public void setIdT(int idT) {
        this.idT = idT;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    @Override
    public String toString() {
        return "Product{" +
                "idP=" + idP +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", idT=" + idT +
                ", information='" + information + '\'' +
                ", idC=" + idC +
                '}';
    }
}