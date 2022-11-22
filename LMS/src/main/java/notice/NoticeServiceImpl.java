package notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired private NoticeDAO dao;

	@Override
	public List<NoticeVO> notice_list() {
	
		return dao.notice_list();
	}

	@Override
	public NoticeVO notice_info(String title) {
		return dao.notice_info(title);
	}

	@Override
	public int notice_insert(NoticeVO vo) {
		
		return dao.notice_insert(vo);
	}

	@Override
	public int notice_delete(int id) {
		return dao.notice_delete(id);
	}

	
	
	

}
