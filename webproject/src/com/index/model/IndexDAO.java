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
	
	public List<IndexDTO> getName(int page, int limit){
		List<IndexDTO> list =new ArrayList<IndexDTO>(); 
		int start=(page-1)*limit+1;
		int end=page*limit;
		
		try{
			DBConnection db = new DBConnection();
			con = db.con;
			sql="select * from pokemon order by pno";
			sql ="select * from (select pokemon.*, rownum as rnum "
					 + " from (select * from pokemon order by pno) pokemon)" 
					 + " where rnum >=? and rnum <= ?";
			
			
			pstmt= con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
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
	
	public int getListCount(){
		int count=0;
		try{
        	DBConnection db = new DBConnection();
			con = db.con;
        	//DBConnection db = new DBConnection();
            //con = db.con;
        	sql="select count(*) from pokemon";
        	pstmt=con.prepareStatement(sql);
        	rs=pstmt.executeQuery(); //쿼리문 실행
        	if(rs.next()){ //레코드가 있다면
        		count=rs.getInt(1); //총 레코드 수 저장
        	}
        	rs.close(); pstmt.close(); con.close();
        }catch(Exception e){
        	e.printStackTrace();
        }
		return count; // 120
	}
	
	
	
	
	
	
	
	
	
	
	
	
	}

