package bnym.casestudy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Entity
public class ContactInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotEmpty(message = "Name can not be empty")
	private String name;
	
	@NotEmpty
	@Email(message = "Please provide you email")
	private String email;
	
	@NotEmpty
	private String subject;
	
	@NotEmpty
	private String message;
	
	//================constructor============================
	
	public ContactInfo() { 
		
	}


	
	
	public ContactInfo(Long id, @NotEmpty(message = "Name can not be empty") String name,
			@NotEmpty @Email(message = "Please provide you email") String email, @NotEmpty String subject,
			@NotEmpty String message) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.subject = subject;
		this.message = message;
	}




	//getters and setters


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


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
