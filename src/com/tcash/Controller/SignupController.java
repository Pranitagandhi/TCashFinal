package com.tcash.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.tcash.Bean.TcashBean;
import com.tcash.Dao.TcashDao;


@Controller

public class SignupController {

    @Autowired
	TcashDao dao;
	@RequestMapping("/signUp")
	public ModelAndView showform(){
		return new ModelAndView("signUp","command",new TcashBean());
	}
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("emp") TcashBean emp){
		dao.save(emp);
	
		return new ModelAndView("redirect:/Login");
		}
	@RequestMapping("/Login")
	public ModelAndView showform1(){
		return new ModelAndView("Login","command",new TcashBean());
	}
	@RequestMapping(value="/save1",method = RequestMethod.POST)
	public ModelAndView save1(@ModelAttribute("emp") TcashBean emp){
		if(dao.save1(emp)== true){
			return new ModelAndView("redirect:/welcome");
		}
		else{
			return new ModelAndView("redirect:/signUp");
		}
		
		}
	@RequestMapping("/welcome")
	public ModelAndView showform2(){
		return new ModelAndView("welcome","command",new TcashBean());
	}
	@RequestMapping("/home")
	public ModelAndView showform3(){
		return new ModelAndView("home","command",new TcashBean());
	}
	@RequestMapping("/editProfile")
	public ModelAndView showform4(){
		return new ModelAndView("editProfile","command",new TcashBean());
	}
	@RequestMapping(value="/save2",method = RequestMethod.POST)
	public ModelAndView save2(@ModelAttribute("emp") TcashBean emp){
		
			return new ModelAndView("redirect:/welcome");
		
		
		
		}


}
