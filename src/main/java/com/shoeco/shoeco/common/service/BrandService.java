package com.shoeco.shoeco.common.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shoeco.shoeco.common.model.SCBrandVO;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class BrandService {
    
    @Autowired
    private DataSource dataSource; // 데이터 소스 주입
    
    public int getNextBrandCode() throws SQLException {
        int nextBrandCode = 0;
        
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT BRAND_CODE_SEQ.NEXTVAL FROM DUAL");
             ResultSet resultSet = preparedStatement.executeQuery()) {
            
            if (resultSet.next()) {
                nextBrandCode = resultSet.getInt(1);
            }
        }
        
        return nextBrandCode;
    }
    
    @Transactional // 트랜잭션 관리를 Spring에 위임합니다.
    public void registerBrand(SCBrandVO brand) {
        try {
            int nextBrandCode = getNextBrandCode(); // 시퀀스 값을 가져옵니다.
            brand.setBrandCode(nextBrandCode); // 브랜드 코드 설정
            brandRepository.save(brand); // 브랜드 등록
        } catch (SQLException e) {
            // SQLException 처리
        }
    }
}

