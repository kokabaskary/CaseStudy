package bnym.casestudy.controller;

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

import bnym.casestudy.service.contactinfo.ContactInfoService;

@Controller
public class ContactFormController {
	
	private ContactInfoService contactInfoService;
	
	
	//constructor
	public  ContactFormController() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public ContactFormController(ContactInfoService contactInfoService) {
	
		this.contactInfoService = contactInfoService;
	}


	
	@RequestMapping("/contact") //========================================================== step-1 for validation
	public ModelAndView getContactForm(Model contactInfo) {
		
		contactInfo.addAttribute("contactInfo", new ContactInfo());
		
		ModelAndView model = new ModelAndView("contact");
		
		model.addObject("msg", "Welcome to Contact Portal!");
		return model;

	}
	
	// ========================= Method saving contact info ================================================
				@RequestMapping(value = "/saveContactInfo", method = RequestMethod.POST)//======================= step-1 for validation
				public ModelAndView submitContactInfo(
						@Valid @ModelAttribute("contactInfo") ContactInfo contactInfo, BindingResult result) {
						contactInfoService.saveContactInfo(contactInfo);
							if (result.hasErrors()) {
								ModelAndView model = new ModelAndView("contact");
								return model;
							}
							ModelAndView model = new ModelAndView("index");
							
							return model;

			
}
}
