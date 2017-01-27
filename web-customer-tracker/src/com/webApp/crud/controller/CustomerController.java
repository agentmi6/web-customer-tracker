package com.webApp.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webApp.crud.entity.Customer;
import com.webApp.crud.service.CustomerService;
import com.webApp.crud.service.CustomerTypeService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;

	@Autowired
	private CustomerTypeService customerTypeService;

	@GetMapping("/list")
	public String listCustomers(Model theModel) {

		// get customers from the dao
		List<Customer> theCustomers = customerService.getCustomers();

		// add the customers to the model(mvc spring)
		theModel.addAttribute("customers", theCustomers);

		return "list-customers";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);
		theModel.addAttribute("customerTypes", customerTypeService.getCustomerTypes());

		return "customer-form";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {

		// save the customer using our service
		customerService.saveCustomer(theCustomer);

		return "redirect:/customer/list";
	}
}