package member;

import java.util.HashMap;

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
		return sql.selectOne("member.login", map);
	}

	@Override
	public int member_join(MemberVO vo) {
		return sql.insert("member.join", vo);
	}

	@Override
	public int member_id_check(String id) {
		return sql.selectOne("member.id_check", id);
	}



	

	
	
	
	
}
