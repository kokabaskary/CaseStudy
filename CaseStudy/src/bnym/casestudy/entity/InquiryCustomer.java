package bnym.casestudy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.validation.constraints.Email;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;



@Entity
public class InquiryCustomer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotEmpty(message = "Name can not be empty")
	@Size(max = 25, message = "Name must be less than 25 characters")
	private String name;
	
	
	@NotEmpty
	@Email(message = "Pleae provide you email")
	private String email;
	
	@Pattern(message = "Please enter the correct format", regexp = "\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}")
	private String phone;// long is not primitive type it is an object

	@Future(message = "Please select a future date !!!")
	private Date eventDate;
	
	@NotNull
	private int peopleServing;
	
	
	@NotEmpty(message = "Please provide theme details")
	private String message;
	
	
	
	
	//===============Constructor==========================
	
	public InquiryCustomer() {}

	public InquiryCustomer(Long id,
			@NotEmpty(message = "Name can not be empty") @Size(max = 25, message = "Name must be less than 25 characters") String name,
			@NotEmpty @Email(message = "Pleae provide you email") String email,
			@Pattern(message = "Please enter the correct format", regexp = "\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}") String phone,
			@Future(message = "Please select a future date !!!") Date eventDate, @NotEmpty int peopleServing,
			@NotEmpty(message = "Please provide theme details") String message)
			 {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.eventDate = eventDate;
		this.peopleServing = peopleServing;
		this.message = message;
		
	}
	
	//===============Getters and Setters===================

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public int getPeopleServing() {
		return peopleServing;
	}

	public void setPeopleServing(int peopleServing) {
		this.peopleServing = peopleServing;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
	
	
}
