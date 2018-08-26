package service;

import java.util.List;

import beans.TransactionBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import entity.TransactionInfo;

public interface TransactionService {

	CustomerInfo checkUpi(TransferFundBean transfer);

	CustomerInfo debit(TransferFundBean transfer, CustomerInfo cust);
	
	CustomerInfo credit(TransferFundBean transfer, CustomerInfo cust);

	boolean saveSuccessfulTransaction(TransactionInfo acc_holder, TransactionInfo beneficiary);

	List getTxDet(TransactionBean transbean, CustomerInfo cust);

	PersonalDetails getPersonalInfo(CustomerInfo cust);


}
