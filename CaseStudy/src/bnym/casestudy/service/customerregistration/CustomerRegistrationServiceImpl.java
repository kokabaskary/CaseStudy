package bnym.casestudy.service.customerregistration;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import bnym.casestudy.entity.Customer;
import bnym.casestudy.repository.CustomerRepository;

@Service
@Transactional
public class CustomerRegistrationServiceImpl implements CustomerRegistationService {

	
	private CustomerRepository repository;
	
	public  CustomerRegistrationServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public CustomerRegistrationServiceImpl(CustomerRepository repository) {
		this.repository = repository;
	}
	
	
	@Override
	public List<Customer> getAllCustomers() {
		//local copy of Customer table
				List<Customer> list = new ArrayList<Customer>();
				for(Customer customer : repository.findAll()) {
					list.add(customer);
					}
				return list;
	}

	@Override
	public Customer getCustomerById(Long id) {
		Customer customer = repository.findById(id).get();
		return customer;
	}

	@Override
	public boolean saveCustomer(Customer customer) {
		try {
			repository.save(customer);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteCustomerById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}
	
	

}
