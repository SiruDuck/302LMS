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

	@Override
	public List<ScoreVO> lookup_list_for_teacher(String name) {
		return sql.selectList("score.list_teacher", name);
	}

	@Override
	public List<ScoreVO> search_name(String student, String name) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("student", student);
		
		return sql.selectList("score.search_name", map);
	}

	@Override
	public List<ScoreVO> teacher_lecture_title(String name) {
		return sql.selectList("score.lecture_title", name);
	}

	@Override
	public List<ScoreVO> search_name(String student, String name, int lecture_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("student", student);
		map.put("num", lecture_num);
		return sql.selectList("score.lecture_title_lecture", map);
	}

	
}
