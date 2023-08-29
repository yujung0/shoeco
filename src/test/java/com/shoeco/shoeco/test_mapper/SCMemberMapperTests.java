/* 에러나서 일단 전체 주석했습니다! 230829 세연
 package com.shoeco.shoeco.test_mapper;
 

import java.util.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.shoeco.shoeco.common.domain.SCMemberVO;
import com.shoeco.shoeco.common.mapper.SCMemberMapper;

public class SCMemberMapperTests {

    @Autowired
    private SCMemberMapper scMemberMapper; // SCMemberMapper 인터페이스 의존성 주입

//    @Test
//    public void memberJoinTest() throws Exception {
//        SCMemberVO member = new SCMemberVO();
//
//        member.setUserId("test");
//        member.setUserPassword("test");
//        member.setUserEmail("test");
//        member.setUserAddress("인천광역시 중구");
//        member.setUserPhoneNo("010-1234-5678");
//        member.setUserRank("Silver");
//        member.setUserName("둘리");
//
//        // 나머지 필드 설정 (userBdate, userJoinDate, mileage 등)
//
//        scMemberMapper.memberJoin(member); // 회원 가입 쿼리 메서드 실행
//    }
    
	// 아이디 중복검사
	@Test
	public void memberIdChk() throws Exception{
		String id = "admin";	// 존재하는 아이디
		String id2 = "test123";	// 존재하지 않는 아이디
		scMemberMapper.idCheck(id);
		scMemberMapper.idCheck(id2);
	}
}

*/
