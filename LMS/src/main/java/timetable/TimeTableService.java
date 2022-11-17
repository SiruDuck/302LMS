package timetable;

import java.util.List;

public interface TimeTableService {
	List<TimeTableVO> timeTableRegist();					// 수강신청목록
	TimeTableVO timeTableDetail(int lecture_num);			// 상세보기
	
	List<TimeTableVO> lecture_title_list();					// 학과 목록 조회
}
