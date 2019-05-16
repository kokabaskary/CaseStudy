package bnym.casestudy.service.customerorder;

import java.util.List;


import bnym.casestudy.entity.Orders;

public interface CustomerOrderService {
	
	public List<Orders> getAllOrders();
	public Orders getOrderById(Long id);
	public boolean saveOrder(Orders orders);
	public boolean deleteOrderById(Long id);

}
