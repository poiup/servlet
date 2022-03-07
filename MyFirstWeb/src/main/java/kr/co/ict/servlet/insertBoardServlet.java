package kr.co.ict.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;

/**
 * Servlet implementation class insertBoardServlet
 */
@WebServlet("/insertBoard")
public class insertBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 기본적으로, select를 제외한 쿼리문 호출은 post로만 접근할수 있게 합니다.
		request.setCharacterEncoding("utf-8");
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
		// 다 끝낫다면 리다이렉트 방식으로 서블릿 주소 boardlist로 이동시킵니다.
		response.sendRedirect("/MyFirstWeb/boardList");
		
	}

}
