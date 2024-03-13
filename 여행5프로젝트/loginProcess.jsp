
 <%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@ page session="true" %>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>회원확인</title>
 </head>

<body>

<%

String driver="com.mysql.jdbc.Driver";//mysql jdbc드라이버(필수)
String url ="jdbc:mysql://localhost:3306/joindatabase";
//마지막 부분을 본인의 스키마로
String dbId="root"; //데이터베이스 ID
String dbPw="6857";//데이터베이스 PW

  String id = request.getParameter("id");
  String pw = request.getParameter("password");


 Connection conn = null;
  Statement stmt = null;
  ResultSet rs = null;
  boolean isLogin = false;
  
  try{
	  Class.forName(driver);//JDBC드라이버가 실제로 적용되는 부분
		 conn=DriverManager.getConnection(url, dbId, dbPw);
    
    stmt = (Statement) conn.createStatement();
    // 현재 페이지의 글 가져오기
   rs = stmt.executeQuery("select * from joindb where id='" + id + "' and password='" + pw + "'" );
    while( rs.next() )
    {
     session.setMaxInactiveInterval(3600);
     session.setAttribute( "id",id);
     response.sendRedirect("Main.jsp");
   
     isLogin = true;
     
                 
                
    }
    
    if( !isLogin )
    {
    	%>
    	 <script>
  	   alert("로그인 아이디가 다릅니다.");
  	   history.go(-1);
  	   
  	   </script>
  	   <% } 
   
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
