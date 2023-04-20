package qht.shopmypham.com.vn.model;

public class ListProductByCheckOut {
    int idLc;
    int idCk;
    int idP;
    int quantity;


    public ListProductByCheckOut() {
        super();
    }

    public ListProductByCheckOut(int idLc, int idCk, int idP, int quantity) {
        this.idLc = idLc;
        this.idCk = idCk;
        this.idP = idP;
        this.quantity = quantity;
    }

    public int getIdLc() {
        return idLc;
    }

    public void setIdLc(int idLc) {
        this.idLc = idLc;
    }

    public int getIdCk() {
        return idCk;
    }

    public void setIdCk(int idCk) {
        this.idCk = idCk;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
