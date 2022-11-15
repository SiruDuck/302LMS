package lecture;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO implements LectureService {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	
	@Override
	public List<LectureVO> lecture_list() {
		
		return sql.selectList("lecture.list");
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
	public void lecture_delete(String lecture_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void lecture_info(String lecture_num) {
		// TODO Auto-generated method stub
		
	}
	
	

}
