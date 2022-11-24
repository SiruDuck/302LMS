package board;

import java.util.List;

import notice.NoticeVO;


public interface BoardService {
	
	List<BoardVO> board_list(); 			//공지글 목록 조회
	BoardVO board_info(int id);				//공지사항 정보 조회
	int board_insert(BoardVO vo);			//공지사항 신규글저장
	int board_update(BoardVO vo);			//공지사항 변경저장
	int board_delete(int id);				//공지사항 삭제
	int board_read(int id);					//공지글 조회수 변경
	
	
	
	
}
