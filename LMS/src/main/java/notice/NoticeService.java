package notice;

import java.util.List;

public interface NoticeService {
	
	List<NoticeVO> notice_list(); 			//공지글 목록 조회
	NoticeVO notice_info(String title);		//공지사항 정보 조회
	int notice_insert(NoticeVO vo);			//공지사항 신규글저장

	int notice_delete(int id);				//공지사항 삭제
	
	
}
