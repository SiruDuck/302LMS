package timetable;

import java.util.List;

public interface TimeTableService {
	List<TimeTableVO> timeTableRegist(String lecture_title);	// 수강신청목록
	TimeTableVO timeTableDetail(int lecture_num);		// 상세보기
	
	List<TimeTableVO> lecture_title_list();		// 학과 목록 조회
	List<TimeTableVO> lecture_title_search(String lecture_title);		// 과목명으로 조회
	
	List<TimeTableVO> my_timeTable_();		// 신청한 시간표 보기 
}
