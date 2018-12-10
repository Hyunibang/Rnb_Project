package com.dev.dev;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OracleConnectionTest {

	//로깅을 위한 변수 선언
	private static final Logger logger = LoggerFactory.getLogger(OracleConnectionTest.class);
	
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	//연결문자열 jdbc:oracle:thin:@host:port:sid
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	//아이디
	private static final String USER = "System";
	//PW
	private static final String PW = "1234";
	
	@Test
	public void test() throws ClassNotFoundException{
		Class.forName(DRIVER); // JDBC 드라이버 로딩
		
		try(Connection conn=DriverManager.getConnection(URL, USER, PW)){
			logger.info("Oracle connection!!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
