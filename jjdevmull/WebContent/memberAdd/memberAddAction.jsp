<%@ page language="java" contentType="text/html;  charset=utf-8" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;  charset=utf-8">
        <title>Insert title here</title>
    </head>
    <body>
    <%
        request.setCharacterEncoding("utf-8");
    
    String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	String memberName = request.getParameter("memberName");
	String memberSex = request.getParameter("memberSex");
	int memberAge = Integer.parseInt(request.getParameter("memberAge"));
	String memberAddress = request.getParameter("memberAddress");
	
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?";
	String dbUser = "root";
	String dbPw = "java0000";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
	PreparedStatement delStmt = null;
	PreparedStatement addrInsStmt = null;
	
	try{    
        String sql1 = "INSERT INTO member(member_id, member_pw, member_name, member_sex, member_age) VALUES(?,?,?,?,?)";
        conn.setAutoCommit(false);
        PreparedStatement stmt1 = conn.prepareStatement(sql1, Statement.RETURN_GENERATED_KEYS);
        stmt1.setString(1, memberId);
        stmt1.setString(2, memberPw);
        stmt1.setString(3, memberName);
        stmt1.setString(4, memberSex);
        stmt1.setInt(5, memberAge);
        int insertRs = stmt1.executeUpdate();
        ResultSet rs = stmt1.getGeneratedKeys();
        
        int lastKey = 0;
        if(rs.next()){
        	
        	lastKey = rs.getInt(1);
        	
        }
        if(insertRs>0){
        	
        	String addrInsSql = "insert into from address(member_no, member_address) values (?)";
        	addrInsStmt = conn.prepareStatement(addrInsSql);
        	addrInsStmt.setInt(1, lastKey);
        	addrInsStmt.setString(2, memberAddress);
        	addrInsStmt.executeUpdate();
        	
        }
        conn.commit();
        }catch(Exception e) {
    		conn.rollback(); //바로앞 커리까지 롤백된다.
    		e.printStackTrace();
    	}
        %>