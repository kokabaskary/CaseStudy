package bnym.casestudy.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bnym.casestudy.entity.ContactInfo;
import bnym.casestudy.entity.LoginUser;
import bnym.casestudy.service.contactinfo.ContactInfoService;
import bnym.casestudy.service.login.LoginService;

@Controller
public class Logincontroller {
	
	private LoginService loginService;
	
	//constructor
	public Logincontroller() {}
	
	
	@Autowired
	public Logincontroller(LoginService loginService) {
		
		this.loginService = loginService;
	}
	
	@RequestMapping("/login") //========================================================== step-1 for validation
	public ModelAndView getLoginUser(Model loginUser) {
		
		loginUser.addAttribute("loginUser", new LoginUser());
		
		ModelAndView model = new ModelAndView("login");
	
		return model;

	}
	


//
	@RequestMapping(value = "/saveLogin", method = RequestMethod.POST)//======================= step-1 for validation
	public ModelAndView submitLoginUser(
			@Valid @ModelAttribute("loginUser") LoginUser loginUser, BindingResult result) {
			loginService.saveLoginUser(loginUser);
				if (result.hasErrors()) {
					ModelAndView model = new ModelAndView("login");
					return model;
				}
				ModelAndView model = new ModelAndView("index");
				
				return model;

			}
////	
//	
	
//	 @RequestMapping(value = "/login", method = RequestMethod.GET)
//	    public String viewLogin(Map<String, Object> model) {
//		 
//		 	LoginUser loginUser = new LoginUser();
////	        User user = new User();
//	        model.put("userForm", loginUser);
//	        return "login";
//	    }
//	 
//	 //============================================================
//	 
//	    @RequestMapping(value = "/login", method = RequestMethod.POST)
//	    public String doLogin(@Valid @ModelAttribute("userForm") LoginUser loginUser,
//	            BindingResult result, Map<String, Object> model) {
//	 
//	        if (result.hasErrors()) {
//	            return "login";
//	        }
//	 
//	        return "loginSuccess";
//	    }

}
