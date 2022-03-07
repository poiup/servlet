package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletCustom
 */
@WebServlet("/Custom")
public class ServletCustom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCustom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Custom 최초 접속 완료!");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("접속시 생성된 객체는 서버종료로 인해 삭제됩니다.");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// request.getParameter() 를 이용해
		// "jsp","boot"라는 이름으로 들어온 요소를 콘솔에 찍도록 아래 코드를 작성하고
		// doGet메서드를 복사해서 저한테 보내주세요.
		System.out.println("주소 접속 확인");
		var jsp = request.getParameter("jsp");
		var boot = request.getParameter("boot");
		var jpa = request.getParameter("jpa");
		System.out.println("get방식(jpa) : " +  jpa);
		System.out.println("get방식(jsp) : " + jsp);
		System.out.println("get방식(boot) : " + boot);
		// 리다이렉트 방식은 페이지만 이동을 시키며 데이터를 전송하지 않습니다.
		// response.sendRedirect("http://localhost:8181/MyFirstWeb/ServletFrom/springResult.jsp");
		// request.seteAttribute()
		request.setAttribute("jsp", jsp);
		request.setAttribute("boot", boot);
		request.setAttribute("jpa", jpa);
		// 상단의 변수를 같이 전달하기위해 forward방식을 사용합니다.
		RequestDispatcher dp = request.getRequestDispatcher("/ServletFrom/springResult.jsp");
		dp.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		// response.sendRedirect("http://localhost:8181/MyFirstWeb/ServletFrom/springResult.jsp");
		//servletForm 내부에 있던 전송방식을 바꿔서 데이터를 날려주시고
		// post방식으로 전송됨을 구분하기 위해서
		// System.out.println("post방식:" + 변수명);
		var jsp = request.getParameter("jsp");
		var boot = request.getParameter("boot");
		var jpa = request.getParameter("jpa");
		System.out.println("post방식(jpa) : " +  jpa);
		System.out.println("post방식(jsp) : " + jsp);
		System.out.println("post방식(boot) : " + boot);
		
		request.setAttribute("jsp", jsp);
		request.setAttribute("boot", boot);
		request.setAttribute("jpa", jpa);
		
		
		RequestDispatcher dp = request.getRequestDispatcher("/ServletFrom/SpringPostResult.jsp");
		dp.forward(request, response);
	}

}
