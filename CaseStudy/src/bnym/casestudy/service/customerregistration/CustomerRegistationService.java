package bnym.casestudy.service.customerregistration;

import java.util.List;

import bnym.casestudy.entity.Customer;

public interface CustomerRegistationService {
	public List<Customer> getAllCustomers();
	public Customer getCustomerById(Long id);
	public boolean saveCustomer(Customer customer);
	public boolean deleteCustomerById(Long id);

}
