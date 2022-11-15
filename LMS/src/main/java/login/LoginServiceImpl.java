package login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired private LoginDAO dao;

	@Override
	public LoginVO login_login(String id, String pw) throws Exception{
		return dao.login_login(id, pw);
	}

	
	
	
	
	
	
}
