package kr.co.ict.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;
import kr.co.ict.boardVO;

/**
 * Servlet implementation class bUpdateFromServlet
 */
@WebServlet("/bUpdateFrom")
public class bUpdateFromServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bUpdateFromServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNum = Integer.parseInt(request.getParameter("board_num"));
		
		boardDAO bDAO = boardDAO.getInstance();
		boardVO board = null;
		try {
			board = bDAO.getBoardDetail(boardNum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("board", board);
		//RequestDispatcher dp = request.getRequestDispatcher("/board/boardUpdateForm.jsp");
		// response.sendRedirect("http://localhost:8181/MyFirstWeb/board/boardUpdateForm.jsp");
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardUp123dateForm.jsp");
		System.out.println("체크" + request.getParameter("board_num"));
	}

}
