package com.comento.project.board.service;

import java.util.List;

import com.comento.project.board.BoardVO;

public interface BoardService {
	public void register(BoardVO board) throws Exception;
	public BoardVO read(Integer no) throws Exception;
	public void modify(BoardVO board) throws Exception;
	public void remove(Integer no) throws Exception;
	public List<BoardVO> listAll() throws Exception;
}
