package com.comento_study.study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {

	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "study_db";
	String ID = "study";
	String PW = "Sophia1228~";

	DBTest() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver 로딩 성공");
			Connection conn = DriverManager.getConnection(url+dbName,ID,PW);
			System.out.println("서버 연결 성공");
		} catch(ClassNotFoundException e) {
			System.out.println("Driver 로딩 실패");
		}  catch(SQLException e) {
			System.out.println("서버 연결 실패");
		} 
	}

	public static void main(String[] args) {
		new DBTest();
	}
}