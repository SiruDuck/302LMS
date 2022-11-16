package score;

import java.util.List;

public interface ScoreService {

	public List<ScoreVO> lookup_list(String id);					//리스트 조회
	public List<ScoreVO> lookup_list(String id, int num);			//특정 과목리스트 조회
	public List<ScoreVO> lookup_lectures(String id);				//과목 조회
	public List<ScoreVO> lookup_years(String id);					//년도 조회
	public List<ScoreVO> lookup_years(String id, int year);			//특정 년도별 조회
}
