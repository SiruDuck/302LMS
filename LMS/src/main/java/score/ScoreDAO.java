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

	
	/*------------------------------------ 교수 ---------------------------------------*/
	@Override
	public List<ScoreVO> search_name(String student, String name) {
		//교수 화면에서 학생이름 조회
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("student", student);
		
		return sql.selectList("score.search_name", map);
	}


	@Override
	public List<ScoreVO> search_name(String student, String name, int year) {
		//교수 화면에서 학생이름 및 년도 조회
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("student", student);
		map.put("year", year);
		return sql.selectList("score.search_name_year", map);
	}
	@Override
	public List<ScoreVO> search_name(String name, int year) {
		//교수 화면에서 년도별 학생 조회
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("year", year);
		return sql.selectList("score.teacher_year_student",map);
	}

	@Override
	public List<ScoreVO> lookup_teacher_years(String name) {
		//교수 페이지 년도 조회
		return sql.selectList("score.teacher_lectureYear",name);
	}

	

	
}
