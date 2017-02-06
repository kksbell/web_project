package com.member.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;

public class MemberDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public MemberDAO(){
		// DB 연동
		DBConnection db;
		try {
			db = new DBConnection();
			con = db.con;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// (로그인시) 체크하기
	public int loginCheck(String id, String pwd){
		int re = -1;
		try {
			sql = "select * from pmember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				sql = "select * from pmember where id = ? and pwd = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				rs = pstmt.executeQuery();
				if(rs.next()){
					re = 1;
				}else{
					re = 0; // 비번이 틀렸을 경우
				}
			} // id 자체가 없으면 -1
			pstmt.close(); rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}
	
	// 회원정보 가져오기 (세션에서 정보 필요할 수도 있어서)
	public MemberDTO getMember(String id){
		MemberDTO dto = null;
		try{
			sql = "select * from pmember where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setNickname(rs.getString("nickname"));
				dto.setPwd(rs.getString("pwd"));
				dto.setRegdate(rs.getString("regdate"));
			}
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return dto;
	}
	
	// 회원 가입
	public void joinMember(MemberDTO dto){
		try{
			sql = "insert into pmember values (?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getNickname());
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	//비밀번호 찾기
	public MemberDTO findpwd(String id, String name){
		MemberDTO member=null;
		try{
			sql="select *from pokemon where id=? and name=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			rs=pstmt.executeQuery();
			if(rs.next()){
				member=new MemberDTO(); //빈 객체
				member.setPwd
				   (rs.getString("setPwd"));				
			}
			rs.close(); pstmt.close(); con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
			return member;
		}
	

	
	

}
