package login;

public interface LoginService {
	
	LoginVO login_login(String id, String pw) throws Exception;
	
}
