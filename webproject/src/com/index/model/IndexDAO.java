package com.index.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import db.DBConnection;

public class IndexDAO {
	Connection con=null;
	PreparedStatement pstmt=null;	
	private ResultSet re = null;
	ResultSet rs=null;
	String sql=null;
	
	public IndexDAO(){
		/* 커넥션 풀 설정 */
		try {
			DBConnection db = new DBConnection();
			con = db.con;
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // constructor end
	
	public List<IndexDTO> getName(){
		List<IndexDTO> list =new ArrayList<IndexDTO>(); 
		try{
			sql="select * from pokemon";
			pstmt= con.prepareStatement(sql);
			re = pstmt.executeQuery(); //select문 실행
			while(re.next()){ // 레코드가 있으면
				IndexDTO dto =new IndexDTO();
				dto.setPNO(re.getInt("PNO"));
				dto.setPNAME(re.getString("PNAME"));
				dto.setPPICTURE(re.getString("PPICTURE"));
			list.add(dto);
			}
			pstmt.close(); con.close(); re.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return list; // 빈에 저장된 객체를 리턴
	}
	
	
	
	
	
	
	
	
	
	
	
	
	}

