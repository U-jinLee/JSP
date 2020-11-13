package net.member.db;

import java.io.PrintWriter;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class MemberDAO {
	int a;
	int b;
	int c;
	
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
			if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
			if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
			if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}
	
	}
}