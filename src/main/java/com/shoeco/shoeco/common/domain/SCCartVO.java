package com.shoeco.shoeco.common.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
@NoArgsConstructor
public class SCCartVO {

	//230808 동현 작성
    private long cartCode;
    private String userId;
    private long prodOptionNo;
    private long cartCount;
    private String prodName;
    private long prodSize;
    private String color;
    private long price;
}
