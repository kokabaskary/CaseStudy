package bnym.casestudy.service.customerorder;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bnym.casestudy.entity.Orders;
import bnym.casestudy.repository.CustomerOrderRepository;


@Service
@Transactional
public class CustomerOrderServiceImpl implements CustomerOrderService {

	private CustomerOrderRepository repository;

	public  CustomerOrderServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Autowired
	public CustomerOrderServiceImpl(CustomerOrderRepository repository) {
		this.repository = repository;
	}

	@Override
	public List<Orders> getAllOrders() {
		List<Orders> list = new ArrayList<Orders>();
		for(Orders orders : repository.findAll()) {
			list.add(orders);
			}
		return list;
	}

	@Override
	public Orders getOrderById(Long id) {
		Orders orders = repository.findById(id).get();
		return orders;
	}

	@Override
	public boolean saveOrder(Orders orders) {
		try {
			repository.save(orders);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteOrderById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}
