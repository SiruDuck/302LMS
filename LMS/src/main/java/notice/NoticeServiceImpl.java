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

	
	
	
	
	
	

}
