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
public class SCUsersVO {

    private String userId;
    private String userPassword;
    private String userEmail;
    private Date userBdate;
    private String userAddress;
    private String userPhoneNo;
    private Date userJoinDate;
    private long mileage;
    private String userRank;
    private String userName;
    
}
