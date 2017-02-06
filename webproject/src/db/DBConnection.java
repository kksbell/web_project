package db;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

// DB연결 객체 생성
public class DBConnection { 
	private String driver, url, user, passwd;
	private static final String
	  FILE="C:\\Users\\acorn\\git\\web_project\\webproject\\src\\db\\dbconnect.properties"; 
	/*
		다슬 FILE="C:\\Users\\acorn\\git\\web_project\\webproject\\src\\db\\dbconnect.properties";
		
	 */
	
	public Connection con = null;
	
	// 생성자 
	public DBConnection() throws IOException{
		Properties prop = new Properties();
		FileInputStream fis = new 
				FileInputStream(FILE);
		prop.load(new BufferedInputStream(fis));
		driver = prop.getProperty("driver");
		url = prop.getProperty("url");
		user = prop.getProperty("username");
		passwd = prop.getProperty("password");
		
		try{
			// 1단계 : 드라이버로딩
			Class.forName(driver);
			// 2단계 : db 연결 객체 생성(3개 인수)
			con=DriverManager.getConnection(url,user,passwd);
		}catch(Exception e){
			e.printStackTrace();
		}		
		
	}// 생성자 end
	

}






