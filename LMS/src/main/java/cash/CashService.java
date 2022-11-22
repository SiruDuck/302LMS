package cash;

import java.util.List;

import org.springframework.stereotype.Service;

import member.MemberVO;

public interface CashService {
	
	// Cash ing list
	List<Cash_ingVO> cash_ing_list();
	
	
	//+++++++++++++ADMIN 입장에서의 CASH++++++++++++++++//
	
	//final 전체 list --  //ID 6 자리 학생 | Id 2로 시작 5자리 직원 | ID 1로 시작 5자리 교수 | //
	List<Cash_finalVO> cash_final_list();
	
	//월급 지급
	int cash_ing_insert (String id);
	
	
	//교수 화면에 목록 출력 
	//직원 화면에 목록 출력 
	
	
	
	
}
