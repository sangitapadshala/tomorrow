package beans;

import java.io.Serializable;

import entity.CustomerInfo;

public class TransferFundBean {
	private String toUpi;
	private double amount;

	public String getToUpi() {
		return toUpi;
	}

	public void setToUpi(String toUpi) {
		this.toUpi = toUpi;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	

}
