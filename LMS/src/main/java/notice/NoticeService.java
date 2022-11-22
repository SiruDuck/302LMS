package notice;

import java.util.List;

public interface NoticeService {
	
	List<NoticeVO> notice_list(); 		//공지글 목록 조회
	NoticeVO notice_info(String title);	
	int notice_insert(NoticeVO vo);
	
	
	
	
}
