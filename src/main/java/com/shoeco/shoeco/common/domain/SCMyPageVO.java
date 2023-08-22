package com.shoeco.shoeco.common.domain;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
@NoArgsConstructor
public class SCMyPageVO {

	//230818 동현 작성
	//QNA
    private long qnaQNo;
    private String userId ;
    private String qnaQTitle;
    private String qnaQContent;
    private Date qnaQWriteDate;
    private Date qnaQModifyDate;
    private int qnaDelFlag;
    
    //리뷰
    private long revNo;
    private long prodCode;
    private String prodName;
    private int starGrade;
    private String revTitle;
    private String revContent;
    private Date revWriteDate;
    private int revDelFlag;
    
}
