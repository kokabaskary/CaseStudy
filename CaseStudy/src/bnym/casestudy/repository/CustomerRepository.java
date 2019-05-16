package bnym.casestudy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;



import bnym.casestudy.entity.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long>{
	
	List<Customer> findByfNameIgnoreCaseAndLNameIgnoreCaseAndLoginUserEmail(String fName, String lName,String email);

}
