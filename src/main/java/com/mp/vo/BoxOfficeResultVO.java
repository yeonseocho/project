package com.mp.vo;

import lombok.Data;
import java.util.List;

@Data
public class BoxOfficeResultVO {

	private String boxofficeType;
	private String showRange;
	private List<DailyBoxOfficeVO> dailyBoxOfficeList;
}
