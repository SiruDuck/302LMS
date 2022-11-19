package notice;

import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO implements NoticeService{
	@Autowired @Qualifier("ymu") private SqlSession sql;


	@Override
	public List<NoticeVO> notice_list() {
		return sql.selectList("notice.list");
	}

	

	
	
	
	
	
}
