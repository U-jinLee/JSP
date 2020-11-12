package net.member.db;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		System.out.println("연결성공!");
	} catch(Exception e) {
		e.printStackTrace();
		} finally {
			if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
			if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
			if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
	}
}