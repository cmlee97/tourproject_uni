<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.SQLException, java.sql.DriverManager,
java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%!
	String driver="com.mysql.jdbc.Driver";//mysql jdbc����̹�(�ʼ�)
	String url ="jdbc:mysql://localhost:3306/joindatabase";
	//������ �κ��� ������ ��Ű����
	String dbId="root"; //�����ͺ��̽� ID
	String dbPw="6857";//�����ͺ��̽� PW
	String query="SELECT*FROM joindb";//�����ͺ��̽��� ��û�� ������
	
	Connection conn=null;//�����ͺ��̽� ������ ���� �ڵ�
	Statement stmt =null;
	ResultSet rs=null;	
	//2,3��° �� ���� �����ͺ��̽��� ���õ� �ڵ���Դϴ�.
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���̺� �ҷ����� </title>
</head>
<body>
<%
 try{
	 Class.forName(driver);//JDBC����̹��� ������ ����Ǵ� �κ�
	 conn=DriverManager.getConnection(url, dbId, dbPw);
	 //������ ���̽��� ������ ���ؼ� URL, ID, PW�� ���Ǵ� �κ�
	 stmt=conn.createStatement();
	 //������ �ؼ� ����ϱ� ���ؼ� STATEMENT�� �ۼ����ִ� �κ�
	 rs=stmt.executeQuery(query);	 
	 //������ �����Ű�� ���� RS�κ�.
	 
	 while(rs.next()){
		 String id = rs.getString("id");
		 String pw =rs.getString("password");
		 String name = rs.getString("name");
		 String address=rs.getString("address");
		 
		 out.println("���̵�:"+id+"��й�ȣ :"+pw+"�̸� :"+name+"�ּ�: "+address+"<br/>");
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