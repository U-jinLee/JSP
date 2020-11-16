package net.member.db;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.*;
import javax.naming.*;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
			}
	}

	public void memberInsert(Memberbean mbean) {
		String SQL = "insert into member(id, pw, name, age, gender, BirthDate, tel) values(?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPw());
			pstmt.setString(3, mbean.getName());
			pstmt.setInt(4, mbean.getAge());
			pstmt.setString(5, mbean.getGender());
			pstmt.setString(6, mbean.getBirthDate());
			pstmt.setString(7, mbean.getTel());
			
			pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();			
		}finally {
//			if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
			if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
			if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}
	
	} //End memberInsert
	
	public ArrayList<Memberbean> memberList() {
		String SQL = "select id ,name, birthDate, gender, tel from member";
		ArrayList <Memberbean> list = new ArrayList();
		try {
			pstmt=conn.prepareStatement(SQL);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				Memberbean mb = new Memberbean();
				mb.setId(rs.getString("id"));
				mb.setName(rs.getString("name"));
				mb.setBirthDate(rs.getString("birthDate"));
				mb.setGender(rs.getString("gender"));
				mb.setTel(rs.getString("tel"));
				
				list.add(mb);
			}
			
		}catch(Exception e) {
			e.printStackTrace();			
		}finally {
			if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
			if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
			if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}	
		return list;
	}
	
	public Memberbean MemberDetail(Memberbean mbean) {
		/*membertable에서 한 회원의 상세내역을 조회하는 select*/
		String SQL = "select * from member where id=?";
		Memberbean member= null;
		try {
			pstmt = conn.prepareStatement(SQL);
			//첫번 째 물음표에 memberbean에 지정돼 있는 id값을 가져와 세팅하라
			pstmt.setString(1, mbean.getId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member = new Memberbean();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setBirthDate(rs.getString("birthDate"));
				member.setGender(rs.getString("gender"));
				member.setTel(rs.getString("tel"));
			}
		} catch(Exception e) {
			e.printStackTrace();
			} finally {
				if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
				if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
				if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}
		return member;
	}
}