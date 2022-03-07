package kr.co.ict;

public class boardVO {
	private int board_num;
	private String title;
	private String content;
	private String writer;
	private int hit;
	private java.sql.Date bdate;
	private java.sql.Date mdate;
	
	public boardVO(int board_num, String title, String content, String writer, int hit, java.sql.Date bdate, java.sql.Date mdate) {
		super();
		this.board_num = board_num;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.hit = hit;
		this.bdate = bdate;
		this.mdate = mdate;
	}

	@Override
	public String toString() {
		return "boardVO [board_num=" + board_num + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", hit=" + hit + ", bdate=" + bdate + ", mdate=" + mdate + "]";
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public java.sql.Date getBdate() {
		return bdate;
	}

	public void setBdate(java.sql.Date bdate) {
		this.bdate = bdate;
	}

	public java.sql.Date getMdate() {
		return mdate;
	}

	public void setMdate(java.sql.Date mdate) {
		this.mdate = mdate;
	}
	
}
