package kr.co.ict;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class boardDAO {
	//1. DAO 코드 재활용하기
	//1. boardDAO에서 주석처리가 안된부분만
	// getInstance() 메서드까지 가져옴
	
	// 2. ~~DAO 로 되어있는 부분을 전부 현재 DAO클래스명으로 변경
	private DataSource ds = null;
	private static boardDAO dao = new boardDAO();
	
	private boardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static boardDAO getInstance() {
		if(dao == null) {
			dao = new boardDAO();
		}
		return dao;
	
	}
	
	public List<boardVO> getAllboardList() throws SQLException{
		// Connection,PreparedStatement,ResultSet,List<boardVO> 선언
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<boardVO> boardList = new ArrayList<>();
		try { 
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "SELECT * FROM board_info ORDER BY board_num DESC";
			pstmt = con.prepareStatement(sql);
			//쿼리 실행
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int board_num = rs.getInt("board_num");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writer = rs.getString("writer");
				int hit = rs.getInt("hit");
				java.sql.Date bdate = rs.getDate("bdate");
				java.sql.Date mdate = rs.getDate("mdate");
				// boardVO객체에 boardData 안에 유저 정보 넣기
				boardVO boardData = new boardVO(board_num, title, content, writer, hit, bdate, mdate);
				// boardData를 배열boardList에 추가
				boardList.add(boardData);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
			rs.close();
		}
		return boardList;
	}

	
	public void insertBoard(String title, String content, String writer) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "insert into board_info (title,content,writer) value (?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, writer);
			
			int insert = pstmt.executeUpdate();
			//쿼리 실행
		}catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
		}
	}
}