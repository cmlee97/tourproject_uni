<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
 <%
  request.setCharacterEncoding("utf-8");  //Set encoding
  String id  =        request.getParameter("id");            
  String name =   request.getParameter("name");
  String password =     request.getParameter("password");
  String address  =   request.getParameter("address");
 //POST로 Input.html로부터 입력받은 내용을 변수화
 Connection conn=null;//데이터베이스 연결쪽 관련 코드
	Statement stmt =null;
 
 
 
 try{
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3306/joindatabase";
   Connection con = DriverManager.getConnection(url,"root","6857");
   Statement stat = con.createStatement();
   String query = "INSERT INTO joindb(id, password, name, address)  VALUES('"+id+"','"+password+"','"+name+"','"+address+"')";

  stat.executeUpdate(query);
   stat.close();
   con.close();
   response.sendRedirect("login.html");
  }
  catch(Exception e){
   out.println( e );
  }
  
 %>
 
 
 
 
 