package kr.co.ict.servlet.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

public class BoardListService implements IBoardService{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// 페이지번호 받기
		 int pageNum = 0;
		 String page = request.getParameter("pageNum");
		 
		// if(request.getParameter("pageNum") == null) {
		//	 pageNum = 1;			 
		// } else {
		//	 pageNum = Integer.parseInt(page);
		// }
		 
		 try {
			 pageNum = Integer.parseInt(page);
		 } catch(Exception e) {
			 pageNum=1;
		 }
		 System.out.println(pageNum);
		//1. 접속시 BoardDAO 생성
		boardDAO bDAO = boardDAO.getInstance();
		//2. BoardDAO의 getALLBoardList()호출해 전체 게시글 정보 받아오기
		List<boardVO> boardList = bDAO.getAllboardList(pageNum);
		
		System.out.println(boardList);
		//3. request.setAttribute로 바인딩하기
		request.setAttribute("boardList", boardList);
		
		//로그인 여부는 세션값을 저장한 다음 바인딩해서 .jsp페이지에서 확인합니다.
		// 서블릿 내부에서 세션 쓰는법
		// 1. 세션 객체 생성(.jsp 네부에서는 자동으로 생성되는 내장객체이지만 서블릿로직에서는 생성해줘야 쓸수있음)
		HttpSession session = request.getSession();
		// 2.jsp의 스크립트릿 내부와 동일하게 세션값 얻어오기
		String sId = (String)session.getAttribute("login_pass");
		System.out.println("로그인 여부 : "+sId);
		// 세션값이 확인되면 바인딩해서 넘기기
		request.setAttribute("sId", sId);
	}
	
	
}
