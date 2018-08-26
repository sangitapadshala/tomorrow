package repo;

import java.util.List;

import beans.TransactionBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import entity.TransactionInfo;

public interface TransactionRepo {
	
	CustomerInfo checkUpi(TransferFundBean transfer);

	CustomerInfo debit(double new_bal,CustomerInfo cust);
	
	CustomerInfo credit(double new_bal,TransferFundBean transfer);

	boolean saveSuccessfulTransaction(TransactionInfo acc_holder, TransactionInfo beneficiary);

	List getTxnDetails(TransactionBean transbean,CustomerInfo cust);

	PersonalDetails getPersonalInfo(CustomerInfo cust);

}
