package repo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.AadharDetailsBean;
import beans.ForgetBean;
import beans.LoginBean;
import beans.RegisterBean;
import entity.CustomerInfo;
import entity.PersonalDetails;

@Repository
public class AccountRepoImpl implements AccountRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public PersonalDetails getDetails(AadharDetailsBean aadhar) {
		Session session = factory.openSession();
		PersonalDetails user = (PersonalDetails) session.get(PersonalDetails.class, aadhar.getAadharNo());
		if (user != null && user.getAadharNo() == (aadhar.getAadharNo()))
			return user;
		else
			return null;
	}

	@Override
	public PersonalDetails getAadharNo(long aadharNo) {
		Session session = factory.openSession();
		PersonalDetails pd = (PersonalDetails) session.get(PersonalDetails.class, aadharNo);
		System.out.println(pd);
		return pd;

	}

	@Override
	public boolean persist(CustomerInfo user) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			session.save(user);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public CustomerInfo authenticate(LoginBean login) {
		Session session = factory.openSession();
		Query user = session.createQuery("from CustomerInfo where email =:email1");
		user.setParameter("email1", login.getEmail());
		CustomerInfo info = (CustomerInfo) user.uniqueResult();
		if (info != null && info.getPassword().equals(login.getPassword())) {
			return info;
		} else {
			return null;
		}
	}

	@Override
	public CustomerInfo validate(AadharDetailsBean aadhar) {
		Session session = factory.openSession();
		PersonalDetails info = new PersonalDetails();

		Query user = session.createQuery("from CustomerInfo where aadharno=:aadharNo");
		user.setParameter("aadharNo", aadhar.getAadharNo());
		CustomerInfo info1 = (CustomerInfo) user.uniqueResult();
		if (info1 != null) {
			return info1;
		} else {
			return null;
		}
	}

	@Override
	public boolean validate(ForgetBean forget) {
		Session session = factory.openSession();
		CustomerInfo user = (CustomerInfo) session.get(CustomerInfo.class, forget.getAccNo());
		if (user != null && user.getEmail().equals(forget.getEmail()))
			return true;
		else
			return false;

	}

	@Override
	public boolean changePassword(LoginBean change) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			CustomerInfo user = (CustomerInfo) session.get(CustomerInfo.class, change.getAccNo());
			user.setPassword(change.getPassword());
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public String checkCredentials(RegisterBean reg) {
		Session session = factory.openSession();
		Query user = session.createQuery("from CustomerInfo");
		List<CustomerInfo> register = (List) user.list();
		for (CustomerInfo info :  register) {
			System.out.println(info.getEmail());
			System.out.println(reg.getEmail());
			if (reg.getEmail().equals(info.getEmail())) {
				System.out.println(info.getEmail());
				return "email";
			} else if (reg.getPanNo().equals(info.getPanNo())) {
				System.out.println(info.getPanNo());
				return "panno";
			} else if (reg.getPhoneNo() == info.getPhoneNo()) {
				System.out.println(info.getPhoneNo());
				return "phoneno";
			}
		
		}
		return "valid";
	}

}
