package vo;

import java.sql.Date;

public class BoardVO {
private	int boardNum;
private	String boardTitle;
private	String boardWriter;
private	String boardContent;
private	Date boardDate;
private	String boardPass;
private	int readCnt;
private	int boardReSeq;
private	int boardReRef;
//현재 페이지 인덱스를 저장할 변수
private int pageIndex;
private int rowNum;
private String boardFile;
public BoardVO() {}

public BoardVO(int boardNum, String boardTitle, String boardWriter, String boardContent, Date boardDate,
		String boardPass, int readCnt, int boardReSeq, int boardReRef) {
	super();
	this.boardNum = boardNum;
	this.boardTitle = boardTitle;
	this.boardWriter = boardWriter;
	this.boardContent = boardContent;
	this.boardDate = boardDate;
	this.boardPass = boardPass;
	this.readCnt = readCnt;
	this.boardReSeq = boardReSeq;
	this.boardReRef = boardReRef;
}

public int getBoardNum() {
	return boardNum;
}
public void setBoardNum(int boardNum) {
	this.boardNum = boardNum;
}
public String getBoardTitle() {
	return boardTitle;
}
public void setBoardTitle(String boardTitle) {
	this.boardTitle = boardTitle;
}
public String getBoardWriter() {
	return boardWriter;
}
public void setBoardWriter(String boardWriter) {
	this.boardWriter = boardWriter;
}
public String getBoardContent() {
	return boardContent;
}
public void setBoardContent(String boardContent) {
	this.boardContent = boardContent;
}
public Date getBoardDate() {
	return boardDate;
}
public void setBoardDate(Date boardDate) {
	this.boardDate = boardDate;
}
public String getBoardPass() {
	return boardPass;
}
public void setBoardPass(String boardPass) {
	this.boardPass = boardPass;
}
public int getReadCnt() {
	return readCnt;
}
public void setReadCnt(int readCnt) {
	this.readCnt = readCnt;
}
public int getBoardReSeq() {
	return boardReSeq;
}
public void setBoardReSeq(int boardReSeq) {
	this.boardReSeq = boardReSeq;
}
public int getBoardReRef() {
	return boardReRef;
}
public void setBoardReRef(int boardReRef) {
	this.boardReRef = boardReRef;
}

public int getPageIndex() {
	return pageIndex;
}

public void setPageIndex(int pageIndex) {
	this.pageIndex = pageIndex;
}

public int getRowNum() {
	return rowNum;
}

public void setRowNum(int rowNum) {
	this.rowNum = rowNum;
}

public String getBoardFile() {
	return boardFile;
}

public void setBoardFile(String boardFile) {
	this.boardFile = boardFile;
}

}
