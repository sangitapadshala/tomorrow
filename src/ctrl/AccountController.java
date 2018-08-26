package ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import beans.ForgetBean;
import beans.AadharDetailsBean;
import beans.LoginBean;
import beans.RegisterBean;
import beans.TransferFundBean;
import entity.CustomerInfo;
import entity.PersonalDetails;
import service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService service;

	@RequestMapping(value = "aadhar.go", method = RequestMethod.POST)
	public String details(@RequestParam("aadharNo") long aadharNo, AadharDetailsBean aadhar, Map model,
			HttpSession session) {

		CustomerInfo cust = service.validate(aadhar);
		PersonalDetails user = service.getDetails(aadhar);
		if (user != null && cust == null) {
			PersonalDetails pd = service.getAadharNo(aadharNo);

			session.setAttribute("User", user);
			session.setAttribute("PD", pd);

			return "details";
		} else {
			model.put("Prompt", "Aadhaar number is already exist");
			return "aadhar";
		}
	}

	@RequestMapping("details.go")
	public String registerUser(AadharDetailsBean aadhar, Map model, HttpSession session) {
		PersonalDetails person = (PersonalDetails) session.getAttribute("PD");
		int age = service.checkAge(person);
		if(age>=18)
			return "register";
		else {
			model.put("Minor", "You are minor");
			return "aadhar";
		}
	}

	@RequestMapping("register.go")
	public String takeUser(RegisterBean reg, CustomerInfo register, Map model, HttpSession session) {
		register.setAadhar((PersonalDetails) session.getAttribute("PD"));
		register.setAge(service.checkAge((PersonalDetails)session.getAttribute("PD")));
		
		String check = service.checkCredentials(reg);
		System.out.println(check);
		if (check.equals("email")) {
			model.put("Invalid", "Email already exists");
			return "register";
		}
		if (check.equals("panno")) {
			model.put("Invalid", "Pan number already exists");
			return "register";
		}
		if (check.equals("phoneno")) {
			model.put("Invalid", "Phone number already exists");
			return "register";
		}
		if (check.equals("valid")) {
			if (service.persist(register)) {

				session.setAttribute("register", reg);
				model.put("Prompt", "Thank you for registration");
				return "login";
			} else {
				model.put("Invalid", "User Id already exist");
				return "register";
			}
		} else
			return "register";

	}

	@RequestMapping("login.go")
	public String checkLogin(LoginBean login, Map model, HttpSession session) {
		CustomerInfo cust = service.authenticate(login);
		if (cust != null) {
			session.setAttribute("Customer", cust);
			return "dashboard";
		} else {
			model.put("Prompt", "User Id/Password is incorrect");
			return "login";
		}
	}

	@RequestMapping("forget.go")
	public String forgetPass(ForgetBean forget, Map model, HttpSession session) {
		if (service.validate(forget)) {
			session.setAttribute("Id", forget.getAccNo());

			return "changepass";
		} else {
			model.put("Invalid", "Acc no & Email does not match");
			return "forget";
		}
	}

	@RequestMapping("change.go")
	public String changePass(LoginBean change, Map model, HttpSession session) {
		change.setAccNo((long) session.getAttribute("Id"));
		System.out.println((long) session.getAttribute("Id"));
		if (service.changePassword(change)) {
			model.put("Prompt", "Password successfully changed");
			return "login";
		} else {
			model.put("Invalid", "Passwords does not match");
			return "change";
		}
	}

}
