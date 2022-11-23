package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO implements BoardService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<BoardVO> board_list() {
		List<BoardVO> list = sql.selectList("board.list");
		return list;
	}

	
	@Override
	public int board_insert(BoardVO vo) {
		return sql.insert("board.insert", vo);
	}

	@Override
	public int board_update(BoardVO vo) {
		return sql.update("board.update", vo);
	}

	@Override
	public int board_delete(int id) {
		return sql.delete("board.delete", id);
	}

	@Override
	public int board_read(int id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public BoardVO board_info(int id) {
		return sql.selectOne("board.info", id);
	} 
	
	
	
}
