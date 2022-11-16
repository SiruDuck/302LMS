package lecture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LectureServiceImpl implements LectureService {
	@Autowired private LectureDAO dao;
	
	@Override
	public List<LectureVO> lecture_list() {

		return dao.lecture_list();
	}

	@Override
	public int lecture_insert(LectureVO vo) {
		
		return dao.lecture_insert(vo);
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
	public LectureVO lecture_info(String lecture_title) {
		
		return dao.lecture_info(lecture_title);
	}

	

	

	

}
