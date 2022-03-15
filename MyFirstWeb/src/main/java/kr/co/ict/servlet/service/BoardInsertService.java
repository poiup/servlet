package kr.co.ict.servlet.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;

public class BoardInsertService implements IBoardService {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		// DAO 생성
		boardDAO bDAO = boardDAO.getInstance();
		// insert로직 호출(필요 파라미터는 폼에서 날아온다고 가정하고 입력해주세요
		// 폼에서 날아올떄 사용하는 name은 title, content, writer입니다.
		try {
			bDAO.insertBoard(title, content, writer);	
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
