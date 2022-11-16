package member;

import java.util.List;

public interface MemberService {
	
	MemberVO login_login(String id, String pw) throws Exception;
	
	List<MemberVO> member_list();	//전체 멤버리스트
	
}
