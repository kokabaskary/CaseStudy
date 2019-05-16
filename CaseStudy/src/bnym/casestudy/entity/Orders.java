package bnym.casestudy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Future;

@Entity
public class Orders {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	
	double totalPrice;
	
	@Future(message = "Please select a future date !!!")
	Date orderDate;
	
	String status;

	
	
//====================================Constructor========================
	
	public Orders() {
		
	}
	
	public Orders(Long id, double totalPrice, Date orderDate, String status) {
		super();
		this.id = id;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
		this.status = status;
	}

	
	//=============================Getters and Setters=============================
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
