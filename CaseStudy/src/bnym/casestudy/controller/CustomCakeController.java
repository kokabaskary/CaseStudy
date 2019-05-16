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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bnym.casestudy.entity.CustomCake;

import bnym.casestudy.repository.CustomCakeRepository;

@Controller
public class CustomCakeController {
	
	@Autowired
	private CustomCakeRepository repository;

	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "orderDate", new CustomDateEditor(sdf, false));
	}
	
	@RequestMapping("/customize")
	public ModelAndView getCakeOrderForm(Model model) {
						//model attribute customize.jsp
		model.addAttribute("cakeOrderForm",
				new CustomCake(CustomCake.CakeSize.SIX_INCH, CustomCake.CakeFrosting.BUTTERCREAM,
							CustomCake.CakeFilling.BUTTERCREAM_FILLING, CustomCake.CakeFlavor.POUND_CAKE));
		ModelAndView mav = new ModelAndView("customize");
		mav.addObject("sizeList", CustomCake.CakeSize.values());
		mav.addObject("frostingList", CustomCake.CakeFrosting.values());
		mav.addObject("fillingList", CustomCake.CakeFilling.values());
		mav.addObject("flavorList", CustomCake.CakeFlavor.values());
		return mav;
	}
							//form action customize.jsp
	@RequestMapping(value = "/submitOrder", method = RequestMethod.POST)
	public ModelAndView submitCakeOrder(@Valid @ModelAttribute("cakeOrderForm") CustomCake customCake, 
			BindingResult result) {
		
		//model attribute customize.jsp
		System.out.println("I am in submitOrder");
		
		if (result.hasErrors()) {
			System.out.println(result.toString());
			ModelAndView mav = new ModelAndView("ordercake");
			return mav;
		}
		
		repository.save(customCake);

		ModelAndView mav = new ModelAndView("test");//viewodrer.jsp
		mav.addObject("customCake", customCake);
		return mav;
	}
	
	

	
}

	


