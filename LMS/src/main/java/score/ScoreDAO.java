package score;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class ScoreDAO implements ScoreService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<ScoreVO> lookup_list(String id) {
		return sql.selectList("score.list", id);
	}

	@Override
	public List<ScoreVO> lookup_lectures(String id) {
		return sql.selectList("score.lectures", id);
		
	}

	
	
	@Override
	public List<ScoreVO> lookup_list(String id, int num) {
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("num", num);
		
		return sql.selectList("score.lectureOne",map);
	}

	@Override
	public List<ScoreVO> lookup_years(String id) {
		return sql.selectList("score.lectureYear", id);
	}

	@Override
	public List<ScoreVO> lookup_years(String id, int year) {
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("year", year);
		
		return sql.selectList("score.lectureYearOne",map);
	}
	
}
