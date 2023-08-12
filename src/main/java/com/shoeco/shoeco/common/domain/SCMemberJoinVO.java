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
public class SCMemberJoinVO {

    private String userId; //o
    private String userPassword; //o
    private String userEmail;//o
//    private Date userBdate;
    private String userAddress;//o
    private String userPhoneNo;
//    private Date userJoinDate;
    private long mileage;
    private String userRank;
    private String userName;//o
    private String userAddressdetail;//상세 주소
    
}
