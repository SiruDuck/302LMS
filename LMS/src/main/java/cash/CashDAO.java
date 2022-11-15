package cash;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CashDAO implements CashService{
	@Autowired private SqlSession sql;
	
	
	//cash_ing
	@Override
	public List<Cash_ingVO> cash_ing_list() {
		return sql.selectList("cash.cash_ing_list");
	}
	
	
}
