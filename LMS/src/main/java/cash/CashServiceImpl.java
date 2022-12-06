package cash;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.MemberVO;

@Service
public class CashServiceImpl implements CashService {
	@Autowired private CashDAO dao;
	
	//cash_ing list 
	@Override
	public List<Cash_ingVO> cash_ing_list() {
		return dao.cash_ing_list();
	}

	@Override
	public List<Cash_finalVO> cash_final_list(HashMap<String, String> temp_map) {
		return dao.cash_final_list(temp_map);
	}

	@Override
	public int cash_ing_insert(String id) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public List<Cash_finalVO> cash_salary_final_list(HashMap<String, String> temp_map) {
		// TODO Auto-generated method stub
		return dao.cash_salary_final_list(temp_map);
	}

	@Override
	public List<Cash_finalVO> cash_tuition_final_list(HashMap<String, String> temp_map) {
		return dao.cash_tuition_final_list(temp_map);
	}

	@Override
	public List<Cash_finalVO> cash_scholarship_final_list(HashMap<String, String> temp_map) {
		return dao.cash_scholarship_final_list(temp_map);
	}

	
	
}
