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
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/boarddetail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getParameter를 이용해 글번호부터 가져옵니다.
		// board_num으로 가져옵니다. int로 자료형도 바꿔주세요.
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		//System.out.println(bNum);
		
		// dao생성
		boardDAO bDAO = boardDAO.getInstance();
		boardVO board = null;
		try {
			board = bDAO.getBoardDetail(board_num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// dao에서 해당 글번호에 대한 정보를 가져오고
		// 정보가 제대로 들어왔는지 디버깅 해보겠습니다.
		//System.out.println(board);
		// 데이터 바인딩
		request.setAttribute("board", board);
		// 디테일페이지로 포워딩(강사 기준 boarddetail.jsp)후 화면에 데이터 나오는지 체크
		RequestDispatcher dp = request.getRequestDispatcher("/board/boarddetail.jsp");
		dp.forward(request, response);
	}
}



