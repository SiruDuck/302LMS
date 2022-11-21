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
		
		 List<NoticeVO>  list = sql.selectList("notice.list");
		return list;
	}

	@Override
	public NoticeVO notice_info(String id) {
		return sql.selectOne("notice.info", id);
	}

	@Override
	public int notice_insert(NoticeVO vo) {
		return sql.insert("notice.insert", vo);
	}

	

	
	
	
	
	
}
