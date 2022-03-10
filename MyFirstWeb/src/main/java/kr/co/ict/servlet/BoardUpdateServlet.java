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
 * Servlet implementation class BoardUpdateServlet
 */
@WebServlet(name = "BoardUpdate", urlPatterns = { "/BoardUpdate" })
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. BoardDAO에 updateBoard()메서드를 생성해주세요.
		
		boardDAO bDAO = boardDAO.getInstance();
		
		// 2. 1의 메서드에 들어갈 쿼리문을 작성해주세요
		// UPDATE FROM board_info SET title = ?, content = ?, mdate=now(), WHERE board_num = ?
		
		
		// 3 현재 doPost내부에서는 먼저 boardUpdate.jsp에서 form으로 전달되는 데이터를 받아 변수로 저장합니다.
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		// 4. 저장한 변수를 이용해 updateBoard() 메서드를 호출해줍니다.
		try {
			bDAO.boardUpdate(title, content, board_num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 5. boarddetail?board_num=글번호 로 리다이렉트해서 수정된 글을 확인할수 있게만듭니다.
		response.sendRedirect("/MyFirstWeb/boarddetail?board_num="+board_num);
	}

}
