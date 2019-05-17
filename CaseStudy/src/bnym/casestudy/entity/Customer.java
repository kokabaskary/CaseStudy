package bnym.casestudy.entity;



import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotEmpty(message = "Name can not be empty")
	@Size(max = 25, message = "Name must be less than 25 characters")
	private String fName;
	
	@NotEmpty(message = "Name can not be empty")
	@Size(max = 25, message = "Name must be less than 25 characters")
	private String lName;
	
	
	@Pattern(message = "Please enter the correct format", regexp = "\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}")
	private String sMobile;// long is not primitive type it is an object


	@NotEmpty(message="enter your address")
	private String street;
	
	@NotEmpty(message="enter your city")
	private String city;
	
	@NotEmpty(message="enter your state")
	private String state;
	
	@NotEmpty(message="enter your zip")
	private String zipcode;
	
	@Valid @NotNull
	@OneToOne(cascade = CascadeType.ALL, orphanRemoval=true)
	private  LoginUser loginUser;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval=true)
	private List<Orders> orders;
	
	
	
	//==================Constructor===========================
	
public Customer() {
		
	}


	public Customer(Long id,
			@NotEmpty(message = "Name can not be empty") @Size(max = 25, message = "Name must be less than 25 characters") String fName,
			@NotEmpty(message = "Name can not be empty") @Size(max = 25, message = "Name must be less than 25 characters") String lName,
			@Pattern(message = "Please enter the correct format", regexp = "\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}") String sMobile,
			@NotEmpty(message = "enter your address") String street, @NotEmpty(message = "enter your city") String city,
			@NotEmpty(message = "enter your state") String state, @NotEmpty(message = "enter your zip") String zipcode,
			@Valid @NotNull LoginUser loginUser, List<Orders> orders) {
		super();
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.sMobile = sMobile;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.loginUser = loginUser;
		this.orders = orders;
	}



	//==============================Getters and Setters=====================
	

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}


	public String getlName() {
		return lName;
	}


	public void setlName(String lName) {
		this.lName = lName;
	}


	public String getsMobile() {
		return sMobile;
	}


	public void setsMobile(String sMobile) {
		this.sMobile = sMobile;
	}


	public String getStreet() {
		return street;
	}


	public void setStreet(String street) {
		this.street = street;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public LoginUser getLoginUser() {
		return loginUser;
	}


	public void setLoginUser(LoginUser loginUser) {
		this.loginUser = loginUser;
	}


	public List<Orders> getOrders() {
		return orders;
	}


	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}


	
	

}
