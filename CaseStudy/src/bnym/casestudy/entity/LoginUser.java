package bnym.casestudy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;


@Entity
public class LoginUser {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotEmpty
	@Email(message = "Please provide you email")
	private String email;

	@NotEmpty(message = "Please enter your password.")
	private String password;

	// ===========================Constructor=========================

	public LoginUser() {

	}


	public LoginUser(Long id, @NotEmpty @Email(message = "Please provide you email") String email,
			@NotEmpty(message = "Please enter your password.") String password) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
	}


	// ===========================Getters and Setters=========================
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	

}
