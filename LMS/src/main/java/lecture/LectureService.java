package lecture;

import java.util.List;

public interface LectureService {

	List<LectureVO> lecture_list();//수강 목록 조회
	LecturePageVO lecture_list(LecturePageVO page);
	int lecture_insert(LectureVO vo);//강의 개설
	void lecture_update(LectureVO vo);//강의 정보 수정
	void lecture_delete(int lecture_num);//강의 삭제
	LectureVO lecture_info(int lecture_num);//강의 상세 정보
	List<LectureVO> teacher_lec_list();//교수 개인 강의 목록
	


	

}
