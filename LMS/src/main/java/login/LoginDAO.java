package login;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO implements LoginService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public LoginVO login_login(String id, String pw) throws Exception{
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return sql.selectOne("login.firlogin", map);
	}


	

	
	
	
	
}
