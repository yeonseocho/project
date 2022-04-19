package com.mp.vo;

public class DattachVO 
{
	private int att_num;
	private int detail_num;
	private String filename;
	private long filesize;
	
	public int getNum() {
		return att_num;
	}
	public void setNum(int num) {
		this.att_num = num;
	}
	public int getBoard_num() {
		return detail_num;
	}
	public void setDetail_num(int detail_num) {
		this.detail_num = detail_num;
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