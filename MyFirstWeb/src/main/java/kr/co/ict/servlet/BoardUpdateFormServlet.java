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
 * Servlet implementation class BoardUpdateFormServlet
 */
@WebServlet("/BoardUpdateForm")
public class BoardUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. boarddetail.jsp에 목적지를 현재 서블릿으로 하고 post방식으로 전달하는 form을 생성
		// 2. dopost에서 실제로 수정하기를 눌럿을때 반응이 있는지 체크해주세요.
		
		// 3. 해당 글번호에 저장된 정보로 수정페이지를 채워야 하니 글번호도 같이 넘겨지는지 체크
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
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardUpdateForm.jsp");
		dp.forward(request, response);
		System.out.println("체크" + request.getParameter("board_num"));
	}
	

}
