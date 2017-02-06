package com.name.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import db.DBConnection;
import sun.net.spi.nameservice.NameServiceDescriptor;

public class NameDAO {
	Connection con=null;
	PreparedStatement pstmt=null;	
	private ResultSet re = null;
	ResultSet rs=null;
	String sql=null;
	
	public NameDAO(){
		/* 커넥션 풀 설정 */
		try {
			DBConnection db = new DBConnection();
			con = db.con;
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // constructor end
	
	public List<NameServiceDescriptor> getName(){
		List<NameDTO> list =new ArrayList<NameDTO>(); 
		try{
			sql="select * from pokemon";
			pstmt= con.prepareStatement(sql);
			re = pstmt.executeQuery(); //select문 실행
			while(re.next()){ // 레코드가 있으면
				NameDTO dto =new NameDTO();
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

