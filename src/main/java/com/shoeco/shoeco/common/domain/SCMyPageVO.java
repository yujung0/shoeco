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
    private long qnaQNo;
    private String userId ;
    private String qnaQTitle;
    private String qnaQContent;
    private Date qnaQWriteDate;
    private Date qnaQModifyDate;
    private int qnaDelFlag;
}
