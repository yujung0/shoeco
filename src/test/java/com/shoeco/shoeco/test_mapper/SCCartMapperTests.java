package com.shoeco.shoeco.test_mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.shoeco.shoeco.common.mapper.SCCartMapper;
import com.shoeco.shoeco.common.mapper.SCUsersMapper;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration      //폴더 구분자로 \\ 사용 시 오류 발생. /를 사용하세요.
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml" ,
//                       "file:src/main/webapp/WEB-INF/spring/security-context.xml" ,
                       "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class SCCartMapperTests {


    //사용자 패스워드 암호화 
//    @Setter(onMethod_ = @Autowired)
//    private PasswordEncoder pwencoder;
    
    @Setter(onMethod_ = @Autowired)
    private SCCartMapper scCartMapper;
//
    //장바구니 목록 조회 테스트
//    @Test
//    public void testInsertMyMember() {
//    	
//    	System.out.println(scCartMapper.selectCartList());
//    	
//    }// test end

    
} //class-end