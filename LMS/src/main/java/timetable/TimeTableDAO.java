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
	public List<TimeTableVO> timeTableRegist(String lecture_title) {
		return sql.selectList("time.regist");
	}

	@Override
	public TimeTableVO timeTableDetail(int lecture_num) {
		return sql.selectOne("time.detail", lecture_num);
	}

	@Override
	public List<TimeTableVO> lecture_title_list() {
		return sql.selectList("time.titleList");
	}

	@Override
	public List<TimeTableVO> lecture_title_search(String lecture_title) {
		// TODO Auto-generated method stub  lecture_title_list
		return sql.selectList("time.lecture_title_list",  lecture_title);
	}

	@Override
	public List<TimeTableVO> my_timeTable_() {
		return sql.selectOne("time.my_timeTable");
	}

//	@Override
//	public List<TimeTableVO> lecture_title_lsit(String lecture_title) {
//		return sql.selectList("time.lecture_title_list", lecture_title);
//	}


	

}
