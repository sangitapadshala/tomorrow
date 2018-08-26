package service;

import beans.AadharDetailsBean;
import beans.ForgetBean;
import beans.LoginBean;
import beans.RegisterBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;

public interface AccountService {

	PersonalDetails getDetails(AadharDetailsBean aadhar);

	public PersonalDetails getAadharNo(long aadharNo);
	
	public boolean persist(CustomerInfo user);

    CustomerInfo authenticate(LoginBean login);

	boolean validate(ForgetBean forget);

	boolean changePassword(LoginBean change);

	

	CustomerInfo validate(AadharDetailsBean aadhar);

	String checkCredentials(RegisterBean reg);

	int checkAge(PersonalDetails person);

	//CustomerInfo validate(AadharDetailsBean aadhar);
    
    

	
}
