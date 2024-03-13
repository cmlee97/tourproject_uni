 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
</head>
<body>





<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.StringReader" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net .URL" %>

<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.xpath.*" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.xml.sax.InputSource" %>
<%@ page import="test.*" %>

<%

	BufferedReader br=null;

	DocumentBuilderFactory f=DocumentBuilderFactory.newInstance();
	f.setNamespaceAware(true);
	DocumentBuilder builder;
	Document doc=null;

	try {
		String urlstr="http://openapi.airkorea.or.kr/"
				+ "openapi/services/rest/ArpltnInforInqireSvc/getCtprvnMesureLIst"
				+ "?serviceKey=NGWLwCB8P10SuslI3rP%2BgEZU400mnkV6DGNUye89%2BJLrBGT0RAT0WA8D3Ig%2FponnVCiVM%2BgEkv1qXFyDuPoXhg%3D%3D&numOfRows=10&pageSize=10&pageNo=1&startPage=1&itemCode=PM10&dataGubun=HOUR&searchCondition=MONTH";
		URL url= new  URL(urlstr);
		HttpURLConnection urlconnection=(HttpURLConnection)url.openConnection();// ���� �� �б�
		
		
		br=new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
		String result="";
		String line;
		while((line=br.readLine())!=null) {
			result=result+line.trim();//xml  �б�
			
		}
		InputSource sr= new InputSource(new StringReader(result));
		builder=f.newDocumentBuilder();
		doc=builder.parse(sr);
		XPathFactory xf=XPathFactory.newInstance();
		XPath xpath=xf.newXPath();
		XPathExpression exp= xpath.compile("//items/item");
        NodeList nodeList=(NodeList)exp.evaluate(doc,XPathConstants.NODESET);

        
        	NodeList child=nodeList.item(0).getChildNodes();

        		Node node=child.item(0);
        		System.out.println("����ð�: "+node.getTextContent());
        		Node node1=child.item(3);
        		System.out.println("����:  "+node1.getTextContent());
        		Node node2=child.item(4);
        		System.out.println("�λ�:  "+node2.getTextContent());
        		Node node3=child.item(5);
        		System.out.println("�뱸:  "+node3.getTextContent());
                Node node4=child.item(6);
        		System.out.println("��õ:  "+node4.getTextContent());
                Node node5=child.item(7);
        		System.out.println("����:  "+node5.getTextContent());
                Node node6=child.item(8);
        		System.out.println("����:  "+node6.getTextContent());
                Node node7=child.item(9);
        		System.out.println("���:  "+node7.getTextContent());
                Node node8=child.item(10);
        		System.out.println("���:  "+node8.getTextContent());
                Node node9=child.item(11);
        		System.out.println("����:  "+node9.getTextContent());
                Node node10=child.item(12);
        		System.out.println("���:  "+node10.getTextContent());
                Node node11=child.item(13);
        		System.out.println("�泲:  "+node11.getTextContent());
                Node node12=child.item(14);
        		System.out.println("����:  "+node12.getTextContent());
                Node node13=child.item(15);
        		System.out.println("����:  "+node13.getTextContent()); 
                Node node14=child.item(16);
        		System.out.println("���:  "+node14.getTextContent());
                Node node15=child.item(17);
        		System.out.println("�泲:  "+node15.getTextContent());
                Node node16=child.item(18);
        		System.out.println("����:  "+node16.getTextContent());
                Node node17=child.item(19);
        		System.out.println("����:  "+node17.getTextContent());

	}catch(Exception e) {
		System.out.println(e.getMessage());//���� �̺�Ʈ �޼��� ��� 
	}	
	
%>		
</body>
</html>
