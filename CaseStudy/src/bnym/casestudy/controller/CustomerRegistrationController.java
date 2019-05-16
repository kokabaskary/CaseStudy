package bnym.casestudy.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import bnym.casestudy.entity.Customer;
import bnym.casestudy.service.customerregistration.CustomerRegistationService;

@Controller
public class CustomerRegistrationController {
	
	private CustomerRegistationService customerService;
	
	//constructor
	public CustomerRegistrationController() {}

	@Autowired
	public CustomerRegistrationController(CustomerRegistationService customerService) {
	
		this.customerService = customerService;
	}
	
	//============new customer======================
	
	@RequestMapping("/registration") //========================================================== step-1 for validation
	public ModelAndView getRegistrationForm(Model customer) {
		
	customer.addAttribute("customer", new Customer());
		
		ModelAndView model = new ModelAndView("registration");
		
		model.addObject("msg", "Welcome to Registration Portal!");
		return model;

	}
	
	// ========================= Method saving customer ================================================
			@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)//======================= step-1 for validation
			public ModelAndView submitCustomer(
					@Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
					customerService.saveCustomer(customer);
						if (result.hasErrors()) {
							ModelAndView model = new ModelAndView("registration");
							return model;
						}
						ModelAndView model = new ModelAndView("login");
						return model;

					}
			
			//========================All Customers=====================================
			@RequestMapping("/allCustomer")
			public ModelAndView appList() {
				ModelAndView mav = new ModelAndView("allcustomers");
				List<Customer> customerList = customerService.getAllCustomers();
				mav.addObject("customerList",customerList );
				return mav;
			}

			
			//========================Edit  for displaying data to be edited============================
			
			
			@RequestMapping(value = "/editCustomer/{id}", method = RequestMethod.GET)
			public ModelAndView displayEditCustomerForm(@PathVariable Long id) {
			ModelAndView mv = new ModelAndView("/editcustomer");
			Customer customer = customerService.getCustomerById(id);
			mv.addObject("headerMessage", "Edit Customer Details");
			mv.addObject("registrationForm",customer);
			return mv;
			}
			//========================Edit  for saving the edited results============================
			@RequestMapping(value = "/editCustomer/{id}", method = RequestMethod.POST)
			public ModelAndView saveEditedCustomer(@ModelAttribute Customer customer, BindingResult result) {
			//will go to controller

			if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("editcustomer");
			
			}

			customerService.saveCustomer(customer);
			ModelAndView mv = new ModelAndView("redirect:/allCustomer");
			return mv;
			}
			
			
			//======================== Delete============================
			
			@RequestMapping("/delete")
			public ModelAndView deleteCustomer(@RequestParam Long id) {
				
				customerService.deleteCustomerById(id);
				ModelAndView mav = new ModelAndView("redirect:/allCustomer");
				return mav;
			}

	
}
