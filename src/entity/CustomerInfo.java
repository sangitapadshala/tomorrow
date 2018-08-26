package entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.Check;
import org.hibernate.annotations.NaturalId;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name = "customer_info")
@SequenceGenerator(sequenceName="acnt_seq", name="acc_seq")
public class CustomerInfo {

	@OneToOne
	@JoinColumn(name = "aadharno")
	private PersonalDetails aadhar;

	@Id
	@GeneratedValue(generator = "acc_seq")
	private long accNo;
	
	@NaturalId
	@Column(length=10)
	private long phoneNo;
	
	@NaturalId
	private String upi;

	@NaturalId
	private String email;
	
	private String password;

	@NaturalId
	private String panNo;

	private double balance;

	private int age;

	@OneToMany(mappedBy = "customerInfo", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Set<TransactionInfo> transInfo;

	
	
	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public PersonalDetails getAadhar() {
		return aadhar;
	}

	public void setAadhar(PersonalDetails aadhar) {
		this.aadhar = aadhar;
	}

	public long getAccNo() {
		return accNo;
	}

	public void setAccNo(long accNo) {
		this.accNo = accNo;
	}

	public String getUpi() {
		return upi;
	}

	public void setUpi(String upi) {
		this.upi = upi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Set<TransactionInfo> getTransInfo() {
		return transInfo;
	}

	public void setTransInfo(Set<TransactionInfo> transInfo) {
		this.transInfo = transInfo;
	}

}
