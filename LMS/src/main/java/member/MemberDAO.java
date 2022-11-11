package member;

import javax.inject.Qualifier;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public MemberVO member_login(String id, String pw) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	

}
