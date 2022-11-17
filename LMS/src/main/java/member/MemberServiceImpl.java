package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO dao;

	@Override
	public MemberVO login_login(String id, String pw) throws Exception{
		return dao.login_login(id, pw);
	}

	@Override
	public int member_join(MemberVO vo) {
		return dao.member_join(vo);
	}

	@Override
	public int member_id_check(String id) {
		return dao.member_id_check(id);
	}


	
	
	
	
	
	
}
