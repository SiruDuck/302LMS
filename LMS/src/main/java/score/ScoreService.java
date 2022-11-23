package score;

import java.util.List;

public interface ScoreService {

	public List<ScoreVO> lookup_list(String id);					//리스트 조회
	public List<ScoreVO> lookup_list_for_teacher(String name);		//리스트 조회 교수화면
	public List<ScoreVO> teacher_lecture_title(String name);		//해당 교수 과목 리스트 조회
	public List<ScoreVO> search_name(String student, String name);	//교수 화면에서 학생이름 조회
	public List<ScoreVO> search_name(String student, String name, int lecture_num);	//교수 화면에서 학생이름 및 과목 조회
	public List<ScoreVO> lookup_list(String id, int num);			//특정 과목리스트 조회
	public List<ScoreVO> lookup_lectures(String id);				//과목 조회
	public List<ScoreVO> lookup_years(String id);					//년도 조회
	public List<ScoreVO> lookup_years(String id, int year);			//특정 년도별 조회
	
	
}
