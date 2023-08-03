package com.shoeco.shoeco.datasource01;

import static org.junit.Assert.fail;

import java.sql.Connection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
@Log4j
public class DataSourceTests {
	
//	 @Setter(onMethod_ = { @Autowired })
//	 private DataSource dataSource;
//	 @Test
//	 public void testConnection() {
//		 
//		 try (Connection con = dataSource.getConnection()){
//			 log.info(con);
//			 
//		 } catch(Exception e) {
//			 fail(e.getMessage());
//		 }
//	 }
	 
	 @Setter(onMethod_ = { @Autowired })
	 private SqlSessionTemplate sqlSession;
	 @Test
	 public void testMyBatis() {
		 try ( //SqlSession sqlSession = sqlSessionFactory.openSession();
			 Connection conn = sqlSession.getConnection(); ) {
			 log.info(conn);
			 log.info(sqlSession);
		 } catch (Exception e) {
			 fail(e.getMessage());
		 }
	 }
	 
}
