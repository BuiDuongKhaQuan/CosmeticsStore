package qht.shopmypham.com.vn.model;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class Product implements Serializable {
    int idP;
    String name;
    int price;
    String trademark;
    int quantity;
    String information;

    int idC;


    public Product() {
    }

    public Product(int idP, String name, int price, String trademark, int quantity, String information, int idC) {
        this.idP = idP;
        this.name = name;
        this.price = price;
        this.trademark = trademark;
        this.quantity = quantity;
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

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
                ", trademark='" + trademark + '\'' +
                ", quantity=" + quantity +
                ", information='" + information + '\'' +
                ", idC=" + idC +
                '}';
    }

    public static List<Product> getListByPage(List<Product> list, int start, int end) {
        LinkedList<Product> lists;
        try {
            lists = new LinkedList<>();
            for (int i = start; i < end; i++) {
                lists.add(list.get(i));
            }
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
        return lists;
    }
}