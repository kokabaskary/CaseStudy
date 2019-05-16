package bnym.casestudy.service.login;

import bnym.casestudy.entity.LoginUser;

public interface LoginService {
	
	public boolean saveLoginUser(LoginUser loginUser);
	public boolean deleteLoginUserById(Long id);

}
