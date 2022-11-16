package timetable;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class TimeTableDAO implements TimeTableService {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	
	@Override
	public List<TimeTableVO> timeTableRegist() {
		return sql.selectList("time.regist");
	}

}