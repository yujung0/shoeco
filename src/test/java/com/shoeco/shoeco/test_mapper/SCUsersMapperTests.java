package com.shoeco.shoeco.test_mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.shoeco.shoeco.common.mapper.SCUsersMapper;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration      //폴더 구분자로 \\ 사용 시 오류 발생. /를 사용하세요.
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml" ,
//                       "file:src/main/webapp/WEB-INF/spring/security-context.xml" ,
                       "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class SCUsersMapperTests {


    //사용자 패스워드 암호화 
//    @Setter(onMethod_ = @Autowired)
//    private PasswordEncoder pwencoder;
    
    @Setter(onMethod_ = @Autowired)
    private SCUsersMapper sCUsersMapper;

    //회원 등록 테스트
    @Test
    public void testInsertMyMember() {
    	
    	sCUsersMapper.insertSCUser();
    	sCUsersMapper.insertSCAuthoritys();
    	
    }// test end
    

    
} //class-end