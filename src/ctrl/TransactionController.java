package ctrl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.SQLData;
import java.util.List;
import java.util.Map;

import javax.rmi.CORBA.UtilDelegate;
import javax.servlet.http.HttpSession;

import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import beans.AadharDetailsBean;
import beans.TransactionBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import entity.TransactionInfo;
import service.TransactionService;

@Controller
public class TransactionController {
	@Autowired
	private TransactionService service;
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping("transferFund.go")
	public String transferFund(TransferFundBean transfer, CustomerInfo cust, Map model, HttpSession session) {

		CustomerInfo info = service.checkUpi(transfer);
		session.setAttribute("beneficiary", info);
		cust = (CustomerInfo) session.getAttribute("Customer");

		TransactionInfo acc_holder = new TransactionInfo();
		TransactionInfo beneficiary = new TransactionInfo();
		if (info != null) {

			if (cust.getBalance() > 0 && transfer.getAmount() < cust.getBalance()) {
				CustomerInfo debit = service.debit(transfer, cust);

				CustomerInfo credit = service.credit(transfer,info);
				System.out.println(debit +" "+credit);

				if (debit != null && credit != null) {
					session.setAttribute("debit", debit);
					session.setAttribute("credit", credit);

					acc_holder.setBalance(debit.getBalance());
					acc_holder.setDebitAmount(transfer.getAmount());
					acc_holder.setTransDate(sdf.format(new Date()));
					acc_holder.setCustomerInfo((CustomerInfo) session.getAttribute("debit"));

					beneficiary.setBalance(credit.getBalance());
					beneficiary.setCreditAmount(transfer.getAmount());
					beneficiary.setTransDate(sdf.format(new Date()));
					beneficiary.setCustomerInfo((CustomerInfo) session.getAttribute("credit"));

					service.saveSuccessfulTransaction(acc_holder, beneficiary);
					model.put("Prompt", "Transaction successful");

					return "dashboard";
				} else {
					model.put("Invalid", "Transaction failed");
					return "fund";
				}
			} else {
				model.put("Invalid", "Insufficient balance");
				return "fund";
			}

		} else {
			model.put("Invalid", "Invalid UPI");
			return "dashboard";
		}
	}

	@RequestMapping("logout.go")
	public String logout(Map model, HttpSession session) {
		session.invalidate();
		model.put("Prompt", "Logout successfully");
		return "login";
	}

	@RequestMapping("transaction.go")
	public String details(TransactionBean transbean, CustomerInfo cust, Map model, HttpSession session) {
		System.out.println(transbean.getFrom());
		System.out.println(transbean.getTo());
		cust = (CustomerInfo) session.getAttribute("Customer");
		List tx = service.getTxDet(transbean, cust);
		session.setAttribute("list", tx);
		return "transaction";

	}
	
	@RequestMapping("profile.go")
	public String getProfileInfo(CustomerInfo cust,Map model, HttpSession session) {
		 cust = (CustomerInfo)session.getAttribute("Customer");
		 
		 PersonalDetails person = service.getPersonalInfo(cust);
		 session.setAttribute("Profile", person);
		
		
		return "profile";

	}

}
