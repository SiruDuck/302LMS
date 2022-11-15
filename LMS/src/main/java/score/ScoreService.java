package score;

import java.util.List;

public interface ScoreService {

	public List<ScoreVO> lookup_list();					//리스트 조회
	public List<ScoreVO> lookup_list(int num);			//특정 과목리스트 조회
	public List<ScoreVO> lookup_lectures();				//과목 조회
}
