package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class OTP implements Serializable {
    String idOTP, idA, OTP;
    public OTP() {
    }

    public OTP(String idOTP, String idA, String OTP) {
        this.idOTP = idOTP;
        this.idA = idA;
        this.OTP = OTP;
    }

    public String getIdOTP() {
        return idOTP;
    }

    public void setIdOTP(String idOTP) {
        this.idOTP = idOTP;
    }

    public String getIdA() {
        return idA;
    }

    public void setIdA(String idA) {
        this.idA = idA;
    }

    public String getOTP() {
        return OTP;
    }

    public void setOTP(String OTP) {
        this.OTP = OTP;
    }
}
