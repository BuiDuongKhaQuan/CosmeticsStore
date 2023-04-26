package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class WareHouse implements Serializable {
    int idP;
    int quantity;
    int quantityInput;
    String dateInput;

    public WareHouse() {
    }

    public WareHouse(int idP, int quantity, String dateInput, int quantityInput ) {
        this.idP = idP;
        this.quantity = quantity;
        this.dateInput = dateInput;
        this.quantityInput = quantityInput;
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

    public String getDateInput() {
        return dateInput;
    }

    public void setDateInput(String dateInput) {
        this.dateInput = dateInput;
    }
    public int getQuantityInput() {
        return quantityInput;
    }

    public void setQuantityInput(int quantityInput) {
        this.quantityInput = quantityInput;
    }

    @Override
    public String toString() {
        return "WareHouse{" +
                "idP=" + idP +
                ", quantity=" + quantity +
                ", quantityInput=" + quantityInput +
                ", dateInput='" + dateInput + '\'' +
                '}';
    }
}
