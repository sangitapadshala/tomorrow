package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Transaction_info")
@SequenceGenerator(name = "Trans_seq", sequenceName = "Transaction_seq")
public class TransactionInfo {

	@ManyToOne
	@JoinColumn(name = "accNo")
	private CustomerInfo customerInfo;

	@Id
	@GeneratedValue(generator = "Trans_seq")
	@Column(name = "transaction_id")
	private long transId;

	@Column(name = "credit_amount")
	private double creditAmount;

	@Column(name = "debit_amount")
	private double debitAmount;

	private double balance;

	//@Temporal(TemporalType.DATE)
	@Column(name = "transaction_date")
	private String transDate;

	public CustomerInfo getCustomerInfo() {
		return customerInfo;
	}

	public void setCustomerInfo(CustomerInfo customerInfo) {
		this.customerInfo = customerInfo;
	}

	public long getTransId() {
		return transId;
	}

	public void setTransId(long transId) {
		this.transId = transId;
	}

	public double getCreditAmount() {
		return creditAmount;
	}

	public void setCreditAmount(double creditAmount) {
		this.creditAmount = creditAmount;
	}

	public double getDebitAmount() {
		return debitAmount;
	}

	public void setDebitAmount(double debitAmount) {
		this.debitAmount = debitAmount;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getTransDate() {
		return transDate;
	}

	public void setTransDate(String transDate) {
		this.transDate = transDate;
	}





}