package member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import department.DepartmentVO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO dao;

	@Override
	public MemberVO login_login(String id, String pw) throws Exception{
		return dao.login_login(id, pw);
	}

	@Override
	public List<MemberVO> member_list() {
		return dao.member_list();
	}
	
	//과 조회
	@Override
	public List<DepartmentVO> department_list() {
		return dao.department_list();
	}

	@Override
	public List<MemberVO> info_list() {
		return dao.info_list();
	}

	@Override
	public List<MemberVO> search_name_list(String name) {
		return dao.search_name_list(name);
	}

	@Override
	public List<MemberVO> search_id_list(String id) {
		return dao.search_id_list(id);
	}
	
	
	
	
	
	
	
	
}
