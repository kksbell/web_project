package com.pokemon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pokemon.model.PokemonBean;
import db.DBConnection;

public class PokemonDAO {
	// 디비 연동과 쿼리문 수행을 위한 클래스의 참조변수 선언
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet re = null;
	private String sql = null;

	public PokemonDAO() { // 생성자
		/* 커넥션 풀 설정 */
		try {
			DBConnection db = new DBConnection();
			con = db.con;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/* 게시물 내용보기 */
	public PokemonBean getCont(int PNO) {
		PokemonBean bean = new PokemonBean(); // DTO객체
		try{
			sql="select * from board where PNO=?";
			pstmt= con.prepareStatement(sql);
			pstmt.setInt(1, PNO);
			re = pstmt.executeQuery(); //select문 실행
			if(re.next()){ // 레코드가 있으면
				bean.setPNO(re.getInt("PNO"));
				bean.setPINITIAL(re.getString("PINITIAL"));
				bean.setPTYPE(re.getString("PTYPE"));
				bean.setPTYPE2(re.getString("PTYPE2"));
				bean.setPFEATURE(re.getString("PFEATURE"));
				bean.setPFEATURE_H(re.getString("PFEATURE_H"));
				bean.setPPICTURE(re.getString("PPICTURE"));
				bean.setPHEIGHT(re.getString("PHEIGHT"));
				bean.setPWEIGHT(re.getString("PWEIGHT"));
				pstmt.close(); con.close(); re.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return bean; // 빈에 저장된 객체를 리턴
	}
	
	
	
}
