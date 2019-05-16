package bnym.casestudy.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


@Controller
public class NavbarController {
	
	
	//======================For Date===================================
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "orderDate", new CustomDateEditor(sdf, false));
	}
	
//	//==================Controller for Home page====================
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView getHomePage() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
		
	}

//	//==================Controller for About page====================
	@RequestMapping(value={"about"})
	public ModelAndView getAboutPage() {
		ModelAndView mav = new ModelAndView("about");
		return mav;
		
	}

	//==================Controller for menu cake page====================
			@RequestMapping(value={"cake"})
			public ModelAndView getMenuCakePage() {
				ModelAndView mav = new ModelAndView("cake");
				return mav;
				
			}
			
			//==================Controller for orderonline page====================
			@RequestMapping(value={"orderonline"})
			public ModelAndView getPortfolioPage() {
				ModelAndView mav = new ModelAndView("orderonline");
				return mav;
				
			}
	
	
	//==================Controller for Cupcake page====================
		@RequestMapping(value={"cupcake"})
		public ModelAndView getCupcakePage() {
			ModelAndView mav = new ModelAndView("cupcake");
			return mav;
			
		}
		//==================Controller for Cookies page====================
				@RequestMapping(value={"shopcart"})
				public ModelAndView getCookiesPage() {
					ModelAndView mav = new ModelAndView("shopcart");
					return mav;
					
				}
				//==================Controller for Desserts page====================
				@RequestMapping(value={"desserts"})
				public ModelAndView getDessertsPage() {
					ModelAndView mav = new ModelAndView("desserts");
					return mav;
					
				}

		
////	//==================Controller for Login page====================
//	@RequestMapping(value={"/login"})
//	public ModelAndView getLoginPage() {
//		ModelAndView mav = new ModelAndView("login");
//		return mav;
//		
//	}
//	
	//=============Image Gallery Controller============
	
	
//=====================================================
	@RequestMapping(value = { "/imagePage1" })
	public ModelAndView getToFirstImageGallery() {

		ModelAndView mav = new ModelAndView("imageGallery");
		return mav;

	}

	@RequestMapping("/imagePage2")
	public ModelAndView getToSecondImageGallery() {
		ModelAndView mav = new ModelAndView("imageGallery2");
		return mav;
	}

	@RequestMapping("/imagePage3")
	public ModelAndView getToThirdImageGallery() {
		ModelAndView mav = new ModelAndView("imageGallery3");
		return mav;
	}

}

	
	
	
	

