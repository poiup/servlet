package kr.co.ict.servlet.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardInsertFormService implements IBoardService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		HttpSession session = request.getSession();  
		String sId = (String)session.getAttribute("login_pass");	
		System.out.println(sId);
		if(sId == null) {
			RequestDispatcher dp = request.getRequestDispatcher("board/boardList.do");
			dp.forward(request, response);
		}
		request.setAttribute("sId", sId);
		
	}
}
