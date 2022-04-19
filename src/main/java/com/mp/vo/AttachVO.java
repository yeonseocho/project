package com.mp.vo;

public class AttachVO 
{
	private int att_num;
	private int board_num;
	private String filename;
	private long filesize;
	
	public int getNum() {
		return att_num;
	}
	public void setNum(int num) {
		this.att_num = num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
}