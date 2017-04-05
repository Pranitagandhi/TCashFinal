package com.tcash.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.tcash.Bean.TcashBean;
import com.tcash.Dao.TcashDao;

@RestController
@SessionAttributes(value = { "fname", "mobile_no", "lname", "email", "balance" })
public class TcashController {

	@Autowired
	TcashDao dao;
	private static Logger slf4jLogger = LoggerFactory.getLogger(TcashController.class);

	@RequestMapping("/signUp")
	public ModelAndView signUp() {
		return new ModelAndView("signUp", "command", new TcashBean());
	}

	@RequestMapping(value = "/save3", method = RequestMethod.POST)
	public ModelAndView save3(@ModelAttribute("emp") TcashBean emp, HttpServletResponse response) throws IOException {
		if (dao.save3(emp) == true) {

			String message = "Mobile number is already Registered";
			return new ModelAndView("signUp", "message", message);
		} 
		else {
			if( dao.save(emp)==1){
		
				String message1 = "Please re-enter the password correctly!! ";
				System.out.println("password wrong");
				return new ModelAndView("signUp", "message1", message1);
			}
			else {
				System.out.println("password right");
			String message1 = "Registered successfully";
			return new ModelAndView("Login", "message1", message1);

			}
		}
		}
	

	@RequestMapping("/Login")
	public ModelAndView Login() {
		return new ModelAndView("Login", "command", new TcashBean());
	}

	@RequestMapping(value = "/save1", method = RequestMethod.POST)
	public ModelAndView save1(@RequestParam("mobile_no") Long mobile_no, @ModelAttribute("emp") TcashBean emp) {
		if (dao.save1(emp) == true) {
			slf4jLogger.info("Mobile_no is registered, {}", mobile_no);
			ModelAndView modelAndView = new ModelAndView();
			/*if(dao.add1(mobile_no, emp) == true){
				float b = dao.avlbal(mobile_no, emp);
				modelAndView.addObject("mobile_no", mobile_no);
				System.out.println("balance"+b);
					modelAndView.addObject("b", b);
			}else{
				dao.add2(mobile_no, emp);
				float b = dao.avlbal(mobile_no, emp);*/
				modelAndView.addObject("mobile_no", mobile_no);
				/*System.out.println("balance"+b);
					modelAndView.addObject("b", b);
			}*/
			
			/*String message = ""+b;
			return new ModelAndView("home", "message", message);
*/
		modelAndView.setViewName("home");

			return modelAndView;

		} else {
			slf4jLogger.error("Mobile_no is not registered ,{}", mobile_no);
			String message = "Invalid username or password";
			return new ModelAndView("Login", "message", message);
		}

	}
	@RequestMapping(value = "/bal", method = RequestMethod.POST)
	public ModelAndView bal(@ModelAttribute("mobile_no") Long mobile_no, @ModelAttribute("emp") TcashBean emp) {
		float b = dao.avlbal(mobile_no, emp);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("mobile_no", mobile_no);
	
		modelAndView.addObject("b", b);
		
		modelAndView.setViewName("home");

		return modelAndView;
		
		
	}
	
	
	@RequestMapping("/home")
	public ModelAndView home() {
		return new ModelAndView("home", "command", new TcashBean());
	}

@RequestMapping("/editProfile")
	public ModelAndView editProfile() {
		return new ModelAndView("editProfile", "command", new TcashBean());
	}

	@RequestMapping(value = "/save2", method = RequestMethod.POST)
	public ModelAndView save2(@ModelAttribute("mobile_no") Long mobile_no, @RequestParam("fname") String fname,
			@RequestParam("lname") String lname, @RequestParam("email") String email,
			@ModelAttribute("emp") TcashBean emp) {

		dao.save2(mobile_no, emp);
		slf4jLogger.info("Profile is updated,{},{},{} for the user  {},", fname, lname, email, mobile_no);
		System.out.println(emp.getUsername());
	
		ModelAndView modelAndView = new ModelAndView();
	/*	String m =dao.editProfile(mobile_no, emp);
		System.out.println("name"+m);
		modelAndView.addObject("m", m);*/
		modelAndView.addObject("mobile_no", mobile_no);
		modelAndView.addObject("fname", fname);
		modelAndView.addObject("lname", lname);
		modelAndView.addObject("email", email);
		modelAndView.setViewName("editoutput");

		return modelAndView;

	}

	@RequestMapping("/addmoney")
	public ModelAndView addmoney() {

		return new ModelAndView("addmoney", "command", new TcashBean());
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView add(@ModelAttribute("mobile_no") Long mobile_no, @RequestParam("balance") float balance,
			@ModelAttribute("emp") TcashBean emp) {
		dao.add(mobile_no, emp);
		if (dao.add1(mobile_no, emp) == true) {
			dao.add3(mobile_no, emp);
			slf4jLogger.info("Money {} updated successfully for the user ,{} ", balance, mobile_no);
			Float b = dao.avlbal(mobile_no, emp);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("b", b);
			modelAndView.addObject("balance", balance);
			modelAndView.addObject("mobile_no", mobile_no);
			String message = "Money added Succesfully !! Available balance " + b;
			
			return new ModelAndView("addmoney", "message", message);

			
		} else {
			dao.add2(mobile_no, emp);
			slf4jLogger.info("Money {}  added successfully for the user ,{} ", balance, mobile_no);
			ModelAndView modelAndView = new ModelAndView();
			Float b = dao.avlbal(mobile_no, emp);
			modelAndView.addObject("b", b);
			modelAndView.addObject("balance", balance);
			modelAndView.addObject("mobile_no", mobile_no);
			String message = "Money added Succesfully !! Available balance " + b;
			return new ModelAndView("addmoney", "message",message);
			
		}

	}

	@RequestMapping("/fundtransfer")
	public ModelAndView fundtransfer() {
		return new ModelAndView("fundtransfer", "command", new TcashBean());
	}

	@RequestMapping(value = "/fundcheck", method = RequestMethod.POST)
	public ModelAndView fundcheck(@ModelAttribute("mobile_no") Long mobile_no, @ModelAttribute("emp") TcashBean emp) {
		if (dao.fundcheck(mobile_no, emp) == true) {
			slf4jLogger.error("Recipient is registered");
			if (dao.submit(mobile_no, emp) == 1) {
				if (dao.fund(mobile_no, emp) == true) {
					dao.fund3(mobile_no, emp);
					dao.fund4(mobile_no, emp);
					slf4jLogger.info("Fund transferred from {} to the recipient successfully", mobile_no);
					Float b = dao.avlbal(mobile_no, emp);
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("mobile_no", mobile_no);
					modelAndView.addObject("b", b);
					String message = "Fund transferred!! Available balance " + b;
					return new ModelAndView("fundtransfer", "message", message);

				} else {
					dao.fund2(emp);
					dao.fund3(mobile_no, emp);
					dao.fund4(mobile_no, emp);
					slf4jLogger.info("Fund transferred from {} to the recipient successfully", mobile_no);
					Float b = dao.avlbal(mobile_no, emp);
					ModelAndView modelAndView = new ModelAndView();
					modelAndView.addObject("mobile_no", mobile_no);
					modelAndView.addObject("b", b);
					String message = "Fund transferred!! Available balance " + b;
					return new ModelAndView("fundtransfer", "message", message);

				}
			} else {
				slf4jLogger.error("Insufficient funds to transfer from user {}", mobile_no);
				String message = "Insufficient Funds!";
				return new ModelAndView("fundtransfer", "message", message);
			}
		} else {
			slf4jLogger.error("Recipient is  not registered");
			String message1 = "Recipient not registered!!!";
			return new ModelAndView("fundtransfer", "message", message1);
		}

	}
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
		String message = "Please Login/Register!";
		slf4jLogger.error("Session Expired for previous user" );
		return new ModelAndView("index", "message", message);
	}
	@RequestMapping(value = "/retrieve3", method = RequestMethod.POST)
	public ModelAndView retrieve3(@ModelAttribute("mobile_no") Long mobile_no, @ModelAttribute("emp") TcashBean emp) {
		java.util.List<TcashBean> list = dao.retrieve2(mobile_no, emp);
		return new ModelAndView("resultform", "list", list);
	}

	@RequestMapping("/error")
	public ModelAndView error() {
		String message = "invalid recipient";
		return new ModelAndView("error", "message", message);
	}

	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public ModelAndView check(@ModelAttribute("mobile_no") Long mobile_no, @ModelAttribute("emp") TcashBean emp) {
		if (dao.check(emp) == true) {
			java.util.List<TcashBean> list = dao.retrieve1(mobile_no, emp);
			return new ModelAndView("resultform", "list", list);
		} else {
			String message = "invalid recipient";
			return new ModelAndView("showtransaction", "message", message);
		}
	}

@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpSession session, @ModelAttribute("mobile_no") Long mobile_no,@ModelAttribute("emp") TcashBean emp) {
	/*String m = new Long(mobile_no).toString();
     session.removeAttribute(m);*/
	
		session.invalidate();   
		
	/*}*/
		slf4jLogger.info("Session is logged out for mobile {}", mobile_no);
		return "index";
		

}
}
	
	/*@WebServlet("/logout")
	public class LogoutServlet extends HttpServlet {*/

		/*@RequestMapping("/logout")
	    protected String logout(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("mobile_no") Long mobile_no,@ModelAttribute("emp") TcashBean emp) throws ServletException, IOException {
	        request.getSession().invalidate();
	        return "redirect:/index.jsp";
	    }*/

	

