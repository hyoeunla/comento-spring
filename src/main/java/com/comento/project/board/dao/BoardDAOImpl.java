package com.comento.project.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.comento.project.board.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static String nameSpace = "com.mappers.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert(nameSpace+".create", vo);
	}

	@Override
	public BoardVO read(Integer no) throws Exception {
		return sqlSession.selectOne(nameSpace+".read", no);
	}
	
	@Override
	public void updateHits(Integer no) throws Exception {
		sqlSession.update(nameSpace+".updateHits", no);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update(nameSpace+".update", vo);
	}

	@Override
	public void delete(Integer no) throws Exception {
		sqlSession.delete(nameSpace+".delete", no);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlSession.selectList(nameSpace+".listAll");
	}

}
