package repo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.TransactionBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import entity.TransactionInfo;

@Repository
public class TransactionRepoImpl implements TransactionRepo {

	@Autowired
	private SessionFactory factory;

	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	@Override
	public CustomerInfo checkUpi(TransferFundBean transfer) {
		Session session = factory.openSession();
		Query q = session.createQuery("from CustomerInfo where upi=:upi1");
		q.setParameter("upi1", transfer.getToUpi());
		CustomerInfo info = (CustomerInfo) q.uniqueResult();
		if (info != null && info.getUpi().equals(transfer.getToUpi())) {
			return info;
		} else
			return null;

	}

	@Override
	public CustomerInfo debit(double new_bal, CustomerInfo cust) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Query q = session.createQuery("update CustomerInfo set balance =:bal where accNo =:accno");
			q.setParameter("bal", new_bal);
			q.setParameter("accno", cust.getAccNo());
			q.executeUpdate();
			txn.commit();
			
			Query q1 = session.createQuery("from CustomerInfo where accNo =:acc");
			q1.setParameter("acc", cust.getAccNo());
			CustomerInfo cust1 = (CustomerInfo) q1.uniqueResult();

			return cust1;

		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return null;
		}

	}

	@Override
	public CustomerInfo credit(double new_bal, TransferFundBean transfer) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Query q = session.createQuery("update CustomerInfo set balance =:bal where upi = :upi1");
			q.setParameter("bal", new_bal);
			q.setParameter("upi1", transfer.getToUpi());
			q.executeUpdate();
			txn.commit();
			
			Query credit = session.createQuery("from CustomerInfo where upi=:upi1");
			credit.setParameter("upi1", transfer.getToUpi());
			CustomerInfo user1 = (CustomerInfo) credit.uniqueResult();

			return user1;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return null;
		}

	}

	@Override
	public boolean saveSuccessfulTransaction(TransactionInfo acc_holder, TransactionInfo beneficiary) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			session.save(acc_holder);
			session.save(beneficiary);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}

	}

	@Override
	public List getTxnDetails(TransactionBean transbean, CustomerInfo cust) {
		Session session = factory.openSession();

		List list;

		Query q = session.createQuery("from TransactionInfo where accNo = :acc and transDate between :from and :to");
		System.out.println(cust.getAccNo());
		q.setParameter("acc", cust.getAccNo());
		q.setParameter("from", transbean.getFrom());
		q.setParameter("to", transbean.getTo());

		list = q.list();

		if (list != null) {
			return list;
		} else
			return null;
	}

	@Override
	public PersonalDetails getPersonalInfo(CustomerInfo cust) {
		Session session = factory.openSession();
		Query q = session.createQuery("from PersonalDetails where aadharno=:aadharNo");
		q.setParameter("aadharNo", cust.getAadhar());
		PersonalDetails info = (PersonalDetails) q.uniqueResult();
		if (info != null) {
			return info;
		} else
			return null;

	}
}
