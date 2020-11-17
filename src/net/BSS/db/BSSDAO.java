package net.BSS.db;

import java.sql.*;
import java.util.ArrayList;

import javax.sql.*;

import net.member.db.Memberbean;

import javax.naming.*;

public class BSSDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public BSSDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BSSbean> BSS(){
		String SQL = "select * from BSS";
		ArrayList<BSSbean> list = new ArrayList();
		
		try {
			pstmt=conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				BSSbean bb = new BSSbean();
				
				bb.setC_num(rs.getInt("c_num"));
				bb.setTitle(rs.getString("title"));
				bb.setContent(rs.getString("content"));
				bb.setWriter(rs.getString("writer"));
				bb.setW_date(rs.getString("w_date"));
				
				list.add(bb);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
			if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
			if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}
		return list;
	}
	
	public BSSbean BSSDetail(BSSbean bbean) {
		/*membertable에서 한 회원의 상세내역을 조회하는 select*/
		String SQL = "select * from bss where c_num=?";
		BSSbean BSS= null;
		try {
			pstmt = conn.prepareStatement(SQL);
			//첫번 째 물음표에 memberbean에 지정돼 있는 id값을 가져와 세팅하라
			pstmt.setInt(1, bbean.getC_num());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				BSS = new BSSbean();
				BSS.setContent(rs.getString("content"));
				BSS.setWriter(rs.getString("writer"));
			}
		} catch(Exception e) {
			e.printStackTrace();
			} finally {
				if(rs != null) {try{rs.close();}catch(Exception e) {e.printStackTrace();}}
				if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
				if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
		}
		return BSS;
	}
}

