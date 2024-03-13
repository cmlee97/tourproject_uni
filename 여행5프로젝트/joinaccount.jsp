<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.SQLException, java.sql.DriverManager,
java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%!
	String driver="com.mysql.jdbc.Driver";//mysql jdbc드라이버(필수)
	String url ="jdbc:mysql://localhost:3306/joindatabase";
	//마지막 부분을 본인의 스키마로
	String dbId="root"; //데이터베이스 ID
	String dbPw="6857";//데이터베이스 PW
	String query="SELECT*FROM joindb";//데이터베이스에 요청할 쿼리문
	
	Connection conn=null;//데이터베이스 연결쪽 관련 코드
	Statement stmt =null;
	ResultSet rs=null;	
	//2,3번째 줄 전부 데이터베이스에 관련된 코드들입니다.
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>테이블값 불러오기 </title>
</head>
<body>
<%
 try{
	 Class.forName(driver);//JDBC드라이버가 실제로 적용되는 부분
	 conn=DriverManager.getConnection(url, dbId, dbPw);
	 //데이터 베이스에 연결을 위해서 URL, ID, PW가 사용되는 부분
	 stmt=conn.createStatement();
	 //연결을 해서 사용하기 위해서 STATEMENT를 작성해주는 부분
	 rs=stmt.executeQuery(query);	 
	 //쿼리를 실행시키기 위한 RS부분.
	 
	 while(rs.next()){
		 String id = rs.getString("id");
		 String pw =rs.getString("password");
		 String name = rs.getString("name");
		 String address=rs.getString("address");
		 
		 out.println("아이디:"+id+"비밀번호 :"+pw+"이름 :"+name+"주소: "+address+"<br/>");
	 }
 }catch(Exception e){
 }finally{
	 try{
		 if(rs !=null)rs.close();
		 if(stmt !=null)stmt.close();
		 if(conn !=null)conn.close();
	 }catch(Exception e){}
 }
%>
</body>
</html>