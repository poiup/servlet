package kr.co.ict.servlet.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

public class BoardListService implements IBoardService{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		//1. 접속시 BoardDAO 생성
		boardDAO bDAO = boardDAO.getInstance();
		//2. BoardDAO의 getALLBoardList()호출해 전체 게시글 정보 받아오기
		List<boardVO> boardList = bDAO.getAllboardList();
		
		//3. request.setAttribute로 바인딩하기
		request.setAttribute("boardList", boardList);
	}
	
	
}
