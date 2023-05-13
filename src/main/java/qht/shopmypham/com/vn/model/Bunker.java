package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Bunker implements Serializable {
    int idP;

    String ngayNhap;

    int slNhap;
    int slHientai;

    public Bunker(int idP, String ngayNhap, int slNhap, int slHientai) {
        this.idP = idP;
        this.ngayNhap = ngayNhap;
        this.slNhap = slNhap;
        this.slHientai = slHientai;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public String getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(String ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public int getSlNhap() {
        return slNhap;
    }

    public void setSlNhap(int slNhap) {
        this.slNhap = slNhap;
    }

    public int getSlHientai() {
        return slHientai;
    }

    public void setSlHientai(int slHientai) {
        this.slHientai = slHientai;
    }

    @Override
    public String toString() {
        return "Bunker{" +
                "idP=" + idP +
                ", ngayNhap='" + ngayNhap + '\'' +
                ", slNhap=" + slNhap +
                ", slHientai=" + slHientai +
                '}';
    }
}
