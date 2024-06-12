package com.shoeco.shoeco.common.domain;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
//@AllArgsConstructor
public class SCRevVO {
	 
	private long revNo;
	private long prodCode;
	private String userId;
	private int starGrade;
	private String revTitle;
	private String revContent;
	private Date revWriteDate;
	private int revDelFlag;
	private long revLike;
	private int revSize; //1:  10mm 정도 작음 /2: 5mm 작음 /3:정사이즈 /4: 5큼 /5: 10 큼
	private int revColor; //1: 화면보다 더 밝음 /2: 화면과 비슷함 3: 화면보다 더 어두음
	private int revWidth;  //1: 아주 좁음 /2: 좁음 /3: 적당함 /4: 넓음/5: 아주 넓음 
	private long prodOptionNo; //리뷰남길때 구매한 옵션 코드 & 사이즈 //구매한 것에 대해서만 남길수 있도록 
	 

}
