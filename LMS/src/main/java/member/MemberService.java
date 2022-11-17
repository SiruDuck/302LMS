package member;

public interface MemberService {
	
	MemberVO login_login(String id, String pw) throws Exception;
	
	int member_join(MemberVO vo);
	int member_id_check(String id);
	
	
	
}
