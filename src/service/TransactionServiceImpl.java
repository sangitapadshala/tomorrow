package service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.TransactionBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import entity.TransactionInfo;
import repo.TransactionRepo;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionRepo repo;
	
	@Override
	public CustomerInfo checkUpi(TransferFundBean transfer) {
		return repo.checkUpi(transfer);
		
	}

	@Override
	public CustomerInfo debit(TransferFundBean transfer, CustomerInfo cust) {
		double new_bal=cust.getBalance()-transfer.getAmount();
		return repo.debit(new_bal,cust);
	
	}
	
	@Override
	public CustomerInfo credit(TransferFundBean transfer, CustomerInfo cust) {
		double new_bal=cust.getBalance()+transfer.getAmount();
		return repo.credit(new_bal,transfer);
	/*	return repo.credit(transfer);*/
	}

	@Override
	public boolean saveSuccessfulTransaction(TransactionInfo acc_holder, TransactionInfo beneficiary) {
		return repo.saveSuccessfulTransaction(acc_holder, beneficiary);
	}

	@Override
	public List getTxDet(TransactionBean transbean, CustomerInfo cust) {
		return repo.getTxnDetails(transbean,cust);
	}

	@Override
	public PersonalDetails getPersonalInfo(CustomerInfo cust) {
		return repo.getPersonalInfo(cust);
	}

	

}
