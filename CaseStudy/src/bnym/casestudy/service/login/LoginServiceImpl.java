package bnym.casestudy.service.login;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bnym.casestudy.entity.LoginUser;

import bnym.casestudy.repository.LoginUserRepository;


@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	
	
	private LoginUserRepository repository;
	

	//constructor
	@Autowired
	public LoginServiceImpl(LoginUserRepository repository) {
		
		this.repository = repository;
	}

	@Override
	public boolean saveLoginUser(LoginUser loginUser) {
		try {
			repository.save(loginUser);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteLoginUserById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}
