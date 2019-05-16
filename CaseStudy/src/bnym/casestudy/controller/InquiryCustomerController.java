package bnym.casestudy.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



import bnym.casestudy.entity.InquiryForm;


import bnym.casestudy.repository.InquiryFormRepository;
import bnym.casestudy.service.Inquiry.InquiryService;


@Controller
public class InquiryCustomerController {
	
	private InquiryService inquiryService;
	
	//constructor
		public InquiryCustomerController() {}

		@Autowired
		public InquiryCustomerController(InquiryService inquiryService) {
		
			this.inquiryService = inquiryService;
		}
	
//	@Autowired
//	private InquiryFormRepository repository;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "inquiryCustomer.eventDate", new CustomDateEditor(sdf, false));
	}
	
	//=============================================================

	@RequestMapping("/inquiry")
	public ModelAndView getInquiryForm(Model model) {
						//model attribute inquiry.jsp
		model.addAttribute("inquiryCustomerForm",
				new InquiryForm(InquiryForm.CakeSize.SIX_INCH, InquiryForm.CakeFrosting.BUTTERCREAM,
						InquiryForm.CakeFilling.BUTTERCREAM_FILLING, InquiryForm.CakeFlavor.POUND_CAKE));
		ModelAndView mav = new ModelAndView("inquiry");
		mav.addObject("sizeList", InquiryForm.CakeSize.values());
		mav.addObject("frostingList", InquiryForm.CakeFrosting.values());
		mav.addObject("fillingList", InquiryForm.CakeFilling.values());
		mav.addObject("flavorList", InquiryForm.CakeFlavor.values());
		return mav;
	}
	
	//==================================================
							//form action inquiry.jsp
	@RequestMapping(value = "/submitInquiry", method = RequestMethod.POST)
	public ModelAndView submitInquiryForm(@Valid @ModelAttribute("inquiryCustomerForm") InquiryForm inquiryForm, 
			BindingResult result) {
		
		//model attribute customize.jsp
		System.out.println("I am in submitOrder");
		
		if (result.hasErrors()) {
			System.out.println(result.toString());
			ModelAndView mav = new ModelAndView("inquiry");
			return mav;
		}
		inquiryService.saveInquiryForm(inquiryForm);
		
//		repository.save(inquiryForm);

		ModelAndView mav = new ModelAndView("viewinquiry");//viewodrer.jsp
		mav.addObject("inquiryForm", inquiryForm);
		return mav;
	}
	
	//========================Edit  for displaying data to be edited============================
//	
////	
//	@RequestMapping(value = "/editInformation/{id}", method = RequestMethod.GET)
//	public ModelAndView displayEditInquiryForm(@PathVariable Long id) {
//	ModelAndView mv = new ModelAndView("/editinquiry");
//	InquiryForm inquiryForm = inquiryService.getInquiryFormById(id);
//	mv.addObject("headerMessage", "Edit Inquiry Details");
//	mv.addObject("inquiryForm",inquiryForm);
//	return mv;
//	}
//////	//========================Edit  for saving the edited results============================
//	@RequestMapping(value = "/editInformation/{id}", method = RequestMethod.POST)
//	public ModelAndView saveEditedInquiry(@ModelAttribute InquiryForm inquiryForm, BindingResult result) {
////	//will go to controller
////
//	if (result.hasErrors()) {
//	System.out.println(result.toString());
//	return new ModelAndView("editinquiry");
//	
//	}
////
//	inquiryService.saveInquiryForm(inquiryForm);
//	ModelAndView mv = new ModelAndView("index");
//	return mv;
//	}
//	
////	
//	//======================== Delete============================
//	
	@RequestMapping("/deleteInquiry")
	public ModelAndView deletInquiry(@RequestParam Long id) {
		
		inquiryService.deleteInquiryFormById(id);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	
	

	
}

	


