package bnym.casestudy.repository;



import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import bnym.casestudy.entity.Orders;

@Repository
public interface CustomerOrderRepository extends CrudRepository<Orders, Long> {
	
//	List<Orders> findByidAndOrdersListOrderDate(Long id, Date date);

}
