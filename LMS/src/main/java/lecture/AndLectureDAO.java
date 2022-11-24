package lecture;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class AndLectureDAO implements LectureService {
	@Autowired @Qualifier("ymu") private SqlSession sql;

	
	public List<LectureVO> lecture_list() {
		
		return sql.selectList("lecture.list");
	}

	@Override
	public LecturePageVO lecture_list(LecturePageVO page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int lecture_insert(LectureVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void lecture_update(LectureVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void lecture_delete(int lecture_num) {
		// TODO Auto-generated method stub
		
	}

	
	public LectureVO lecture_info(int lecture_num) {
		
		return sql.selectOne("lecture.info", lecture_num);
	}

	@Override
	public List<LectureVO> teacher_lec_list(String teacher_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LectureVO> student_lec_list(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LectureVO> teacher_stu(int lecture_num) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	
		
		
	}
	
	


