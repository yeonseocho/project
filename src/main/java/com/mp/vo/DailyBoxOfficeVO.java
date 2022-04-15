package com.mp.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class DailyBoxOfficeVO {

	private String rnum;
	private String rank;
	private String movieCd;
	private String movieNm;
	private String openDt;
	private String audiAcc;
	private String rankOldAndNew;
	private String boxofficeType;
	private String showRange;
	private String rankInten;
	private String salesAmt;
	private String salesShare;
	private String salesInten;
	private String salesChange;
	private String salesAcc;
	private String audiCnt;
	private String audiInten;
	private String audiChange;
	private String scrnCnt;
	private String showCnt;
	

}
