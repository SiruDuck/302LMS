package member;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public MemberVO login_login(String id, String pw) throws Exception{
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return sql.selectOne("login.firlogin", map);
	}

	@Override
	public List<MemberVO> member_list() {
		return sql.selectList("member.member_list");
	}


	

	
	
	
	
}
