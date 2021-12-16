package com.spring.board.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.board.vo.BoardVo;
import com.spring.board.vo.ComCodeVo;
import com.spring.board.vo.PageVo;

public interface BoardDao {

	public String selectTest() throws Exception;

	public List<BoardVo> selectBoardList(HashMap<String, Object> params) throws Exception;

	public BoardVo selectBoard(BoardVo boardVo) throws Exception;

	public int selectBoardCnt() throws Exception;
	
	public int selectBoardCntByComCode(HashMap<String, Object> params) throws Exception;

	public int boardInsert(BoardVo boardVo) throws Exception;

	public int boardDelete(BoardVo boardVo) throws Exception;

	public int boardModify(BoardVo boardVo) throws Exception;

	public List<ComCodeVo> selectComCodeList() throws Exception;

	

}
