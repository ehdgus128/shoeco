package com.shoeco.shoeco.common.service;

import java.sql.SQLException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCBrandMapper;
import com.shoeco.shoeco.common.model.SCBrandVO;

@Service
@Primary // @Primary 어노테이션을 사용하여 우선적으로 주입할 빈을 지정
public class SCBrandServiceImpl implements SCBrandService  {

	// 2308181601 장유정
	@Autowired
	SCBrandMapper scBrandMapper;
	

	@Override
	public void brandEnroll(SCBrandVO brand) {
	    try {
	        int maxBrandCode = scBrandMapper.getMaxBrandCode(); // 최대 브랜드 코드 조회

	        // 다음 브랜드 코드가 313보다 작으면 313으로 설정
	        int nextBrandCode = Math.max(maxBrandCode + 1, 313);

	        brand.setBrandCode(nextBrandCode); // 브랜드 객체에 브랜드 코드 설정

	        Date now = new Date();
	        brand.setRegDate(now);
	        brand.setUpdateDate(now);

	        scBrandMapper.brandEnroll(brand); // 브랜드 등록 쿼리 수행
	        System.out.println("maxBrandCode: " + maxBrandCode);
	        
	    } catch (Exception e) {
	        // 예외 처리
	        // 예: logger.error("브랜드 등록 중 오류 발생", e);
	        // 또는 예외를 다시 던질 수도 있습니다.
	        throw new RuntimeException("브랜드 등록 중 오류 발생", e);
	    }
	}


}

	

