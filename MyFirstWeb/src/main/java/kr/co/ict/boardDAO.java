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
	
	public List<boardVO> getAllboardList(int pageNum) throws SQLException{
		// Connection,PreparedStatement,ResultSet,List<boardVO> 선언
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<boardVO> boardList = new ArrayList<>();
		try { 
			// db연결
			con = ds.getConnection();
			int limitNum = (pageNum-1)*20;
			//쿼리 작성
			String sql = "SELECT * FROM board_info ORDER BY board_num DESC limit ?, 20";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, limitNum);
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
	

	public boardVO getBoardDetail(int board_num) throws SQLException{
		// Connection,PreparedStatement,ResultSet,List<boardVO> 선언
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boardVO board = null;
		
		try { 
			
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "SELECT * FROM board_info WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			//쿼리 실행
			rs = pstmt.executeQuery();
			
			rs.next();
			int boardNum = rs.getInt("board_num");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			java.sql.Date bdate = rs.getDate("bdate");
			java.sql.Date mdate = rs.getDate("mdate");
			int hit = rs.getInt("hit");
			// boardVO객체에 boardData 안에 유저 정보 넣기
			board = new boardVO(boardNum, title, content, writer, hit, bdate, mdate);
			// boardData를 배열boardList에 추가
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
			rs.close();
		}
		return board;
	}

	// deletBoard 메서드를 만들어서 삭제처리 되게 만들어주세요
	public void deleteBoard (int boardNum) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "delete from board_info WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			
			
			//쿼리 실행
			int insert = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
		}
	}
	
	// public boardVO boardUpdate 
	public void boardUpdate (String title, String content, int boardNum) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "UPDATE board_info SET title = ?, content = ?, mdate=now() WHERE board_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, boardNum);
			
			int insert = pstmt.executeUpdate();
			//쿼리 실행
		}catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
		}
	}


	public void upHit(int bId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("현재 조회된 글번호 : " + bId);
		
		try {
			con = ds.getConnection();
			String sql = "UPDATE board_info SET hit = (hit+1) WHERE board_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bId);
			int uphit = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int getPageNum() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int allPage = 1;
		try { 	
			// db연결
			con = ds.getConnection();
			//쿼리 작성
			String sql = "SELECT COUNT(*) FROM board_info";
			pstmt = con.prepareStatement(sql);
			//쿼리 실행
			rs = pstmt.executeQuery();
			if(rs.next()) {
				allPage = rs.getInt("COUNT(*)");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			con.close();
			pstmt.close();
			rs.close();
		}
		return allPage;
	}
}
