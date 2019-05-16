package bnym.casestudy.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import bnym.casestudy.entity.Orders;
import bnym.casestudy.service.customerorder.CustomerOrderService;

@Controller
public class CustomerOrderController {

	@Autowired
	private CustomerOrderService orderService;

	// constructor
	public CustomerOrderController() {
	}

	@Autowired
	public CustomerOrderController(CustomerOrderService orderService) {

		this.orderService = orderService;
	}

//	

	// ========================= Method saving order
	// ================================================
	@RequestMapping(value = "/orderCake", method = RequestMethod.POST) // ======================= step-1 for
																			// validation
	public ModelAndView submitOrder(@Valid @ModelAttribute("orders") Orders orders, BindingResult result) {
		orderService.saveOrder(orders);
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("customize");
			return model;
		}
		ModelAndView model = new ModelAndView("vieworder");
		return model;

	}
	
	//========================All orders=====================================
	@RequestMapping("/allOrders")
	public ModelAndView appList() {
		ModelAndView mav = new ModelAndView("allorders");
		List<Orders> orderList = orderService.getAllOrders();
		mav.addObject("orderList",orderList );
		return mav;
	}

	// ========================Edit for displaying data to be
	// edited============================

	@RequestMapping(value = "/editOrder/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditOrderForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("/editorder");
		Orders orders = orderService.getOrderById(id);
		mv.addObject("headerMessage", "Edit Order Details");
		mv.addObject("registrationForm", orders);
		return mv;
	}

	// ========================Edit for saving the edited
	// results============================
	@RequestMapping(value = "/editOrder/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedOrder(@ModelAttribute Orders orders, BindingResult result) {
		// will go to controller

		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("customize");

		}

		orderService.saveOrder(orders);
		ModelAndView mv = new ModelAndView("vieworder");
		return mv;
	}

	// ======================== Delete============================

//	@RequestMapping("/delete")
//	public ModelAndView deleteCustomer(@RequestParam Long id) {
//
//		orderService.deleteOrderById(id);
//		ModelAndView mav = new ModelAndView("redirect:/allApplication");
//		return mav;
//	}
}
