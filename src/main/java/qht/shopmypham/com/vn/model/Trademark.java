package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Trademark implements Serializable {
	int idTrademark,status;
	String logo, name, address, phone;

	public Trademark() {
	}

	public Trademark(int idTrademark, int status, String logo, String name, String address, String phone) {
		this.idTrademark = idTrademark;
		this.status = status;
		this.logo = logo;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}

	public int getIdTrademark() {
		return idTrademark;
	}

	public void setIdTrademark(int idTrademark) {
		this.idTrademark = idTrademark;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public String toString() {
		return "Trademark{" +
				"idTrademark=" + idTrademark +
				", status=" + status +
				", logo='" + logo + '\'' +
				", name='" + name + '\'' +
				", address='" + address + '\'' +
				", phone='" + phone + '\'' +
				'}';
	}
}
