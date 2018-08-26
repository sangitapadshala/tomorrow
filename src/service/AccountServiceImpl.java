package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.AadharDetailsBean;
import beans.ForgetBean;
import beans.LoginBean;
import beans.RegisterBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import repo.AccountRepo;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepo repo;

	@Override
	public PersonalDetails getDetails(AadharDetailsBean aadhar) {

		return repo.getDetails(aadhar);
	}

	@Override
	public boolean persist(CustomerInfo user) {

		long phoneNo = user.getPhoneNo();
		String phno = String.valueOf(phoneNo);

		user.setUpi(phno.concat("@Fidelis"));
		Encoder encoder = Base64.getEncoder();
		user.setPassword(encoder.encodeToString(user.getPassword().getBytes()));

		return repo.persist(user);
	}

	@Override
	public CustomerInfo authenticate(LoginBean login) {
		Encoder encoder = Base64.getEncoder();
		String encoded = encoder.encodeToString(login.getPassword().getBytes());
		login.setPassword(encoded);
		return repo.authenticate(login);
	}

	@Override
	public PersonalDetails getAadharNo(long aadharNo) {
		return repo.getAadharNo(aadharNo);
	}

	@Override
	public CustomerInfo validate(AadharDetailsBean aadhar) {

		return repo.validate(aadhar);
	}

	@Override
	public boolean validate(ForgetBean forget) {

		return repo.validate(forget);
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Encoder encoder = Base64.getEncoder();
		change.setPassword(encoder.encodeToString(change.getPassword().getBytes()));
		return repo.changePassword(change);
	}

	@Override
	public String checkCredentials(RegisterBean reg) {
		return repo.checkCredentials(reg);
	}

	@Override
	public int checkAge(PersonalDetails person) {
		DateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		Date currentdate = new Date();
		Date birthdate = person.getDob();
		int d1 = Integer.parseInt(formatter.format(birthdate));
		int d2 = Integer.parseInt(formatter.format(currentdate));
		int age = (d2 - d1) / 10000;
		System.out.println(age);
		return age;
		

	}

}
