package score;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class ScoreDAO implements ScoreService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<ScoreVO> lookup_list() {
		return sql.selectList("score.list");
	}

	@Override
	public List<ScoreVO> lookup_lectures() {
		return sql.selectList("score.lectures");
		
	}

	@Override
	public List<ScoreVO> lookup_list(int num) {
		return sql.selectList("score.lectureOne",num);
	}
	
}
