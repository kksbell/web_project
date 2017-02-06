package com.tip.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import db.DBConnection;

public class TipDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet re = null;
	private String sql = null;
	
	public int addTip(TipBean bean){
		int i=0;
		
		try{
			DBConnection db = new DBConnection();
			con = db.con;
			sql = "insert into jebo values(?,?,?,?,?,sysdate)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getID());
			pstmt.setString(2, bean.getPno());
			pstmt.setString(3, bean.getLocation());
			pstmt.setString(4, bean.getTip());
			pstmt.setString(5, bean.getSshot());
			i = pstmt.executeUpdate();
			
			//re.close();	
			pstmt.close();	con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return i;
	}
	
}
