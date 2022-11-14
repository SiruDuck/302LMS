package cash;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CashServiceImpl implements CashService {
	@Autowired private CashDAO dao;
	
	//cash_ing
	@Override
	public List<Cash_ingVO> cash_ing_list() {
		return dao.cash_ing_list();
	}
	
	

}
