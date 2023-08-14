package com.shoeco.shoeco.common.domain;

import java.util.Date;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
@NoArgsConstructor
@Repository
@ComponentScan
public class SCMemberVO {

    private String userId; //o
    private String userPassword; //o
    private String userEmail;//o
    private Date userBDate; //생년월일
    private String userAddress;//우편 번호
    private String userPhoneNo;
    private Date userJoinDate; //가입일
    private long mileage;
    private String userRank;
    private String userName;//o
    private int admicck; //관리자 구분 (일반 0, 관리자 1)
    private String userAddress2; //주소
    private String userAddress3; //상세 주소
    
    



}
