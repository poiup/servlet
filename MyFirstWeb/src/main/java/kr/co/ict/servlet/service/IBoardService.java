package kr.co.ict.servlet.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 다형성 원리를 이용해 프론트 컨트롤러가 수행할 명령들을 하나의 타입으로 실행할수 있도록 도와줍니다.
public interface IBoardService {
	// 서블릿 내부 메서드와 마찬가지로 request, response를 사용할수 있도록 
	void execute(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException;

}
