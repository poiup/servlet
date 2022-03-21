package kr.co.ict;

// 원래 VO 와 DTO는 큰차이는 두지 않고 사용합니다.
// 굳이 차이를 두자면 VO는 DB테이블 형태를 그대로 전달할떄
// DTO는 DB에서 꺼낸 데이터가 가공되어 전달할때 쓰는것을 지칭할때 씁니다.
// 다만 DTO와 VO는 엄격하게 구분되지않고 프로그래머에 따라서는 
// 그냥 DTO를 VO와 완전히 동일하게 쓰는 ㄱㅇ우도 있으므로
// 사용하는 사람이 부르고싶은데로 부르셔도 무방합니다.
public class BoardDTO {
	private int boardCount; // 전채글
	private int currentPage;// 현재 보고있는 페이지
	private int totalPages; // 전체 페이지
	private int startPage; // 시작 페이지
	private int endPage;
	private static int NAV_NUM = 5; // 페이지는 10개씩 링크 표시(하단에 깔릴 버튼은 10개씩
	private static int BOARD_NUM = 20; // 글도 10개씩 표시
	
	public BoardDTO(int boardCount, int currentPage) {
		this.boardCount = boardCount;
		this.currentPage = currentPage;
		
		// 글이 없다면
		if(boardCount == 0) {
			this.totalPages = 0;
			this.startPage = 0;
			this.endPage = 0;
		} else {
			// 개시글 개수를 이용해 전체 페이지 갯수 구하기
			if(totalPages%BOARD_NUM == 0) {
				this.totalPages = (boardCount)/BOARD_NUM;				
			} else {
				this.totalPages = ((boardCount)/BOARD_NUM)+1;			
			}
			
		}

		
		// 해당 페이지의 시작 페이지 구하기(StartPage값 구하기
		int navNum = 0;
		if(currentPage % NAV_NUM == 0) {
			navNum = (currentPage-1)/ NAV_NUM; // (50번 페이지의 경우 41~50그룹에 속하므로 실제로는 4가 나와야 하므로
		} else {
			navNum = currentPage /NAV_NUM; // (51페에지 -1/ 10 해도 5가나옴, 50-1/10하면 4가나옴
		}
		// navNum = (currentPage-1)/10;
		
		// 식별번호 navNum이 구해졌으면 * 10 + 1 을 해서 시작번호를 구합니다.
		startPage = (navNum*NAV_NUM) + 1;
		
		// 현재 조회중인 페이지 그룹의 끝페이지 구하기 (endPage값 구하기)
		endPage = startPage + (NAV_NUM-1);
		if(endPage > totalPages) {
			endPage = totalPages;
		}

	}
	public boolean hasNoBoard() {
		return boardCount == 0; // 표시할 게시물이 없으면 버튼도 깔 필요 없음
	}
	
	public boolean hasBoard() {
		return boardCount > 0; //  표시할 게시물이 있다면 버튼을 깔아줘야함
	}
	// 페이지의 총 개수를 알려주는 getter
	public int getBoardCount() {
		return boardCount;
	}
	// 총 글개수
	public int getTotalPages() {
		return totalPages;
	}
	// 해당 페이지 그룹의 시작 페이지
	public int getStartPage() {
		return startPage;
	}
	// 해당 페이지 그룹의 끝 페이지
	public int getEndPage() {
		return endPage;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [boardCount=" + boardCount + ", currentPage=" + currentPage + ", totalPages=" + totalPages
				+ ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
	
}
