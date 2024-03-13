 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
   <head>
                <link rel="stylesheet" type="text/css" href="Main.css">
                <script type="text/javascript" src="Main.js"></script>


      <title>전국 여행지 소개</title>  
    </head>
    <body>
What is <a id = "placeName" ></a>?
        <div class="header">
            <div class="logo">
                <div>
                      <img src="giphy.GIF" alt="map" id="first">
                </div>
            </div>
            <div class="row">
             <div><a href="">후기</a></div>
               <div><a href=""><%
                
                if(session.getAttribute("id")==null){
                	out.println("<a href='login.html'>로그인을 해주세요</a>");
                }
                else{
                	 String id=(String) session.getAttribute("id");
                out.print(id+"님 환영합니다.");
                  
                }%></a></div>
                
                <div><button type="button" onclick="location.href='logout.jsp' ">로그아웃</button></div>
                
                
            </div>
          </div>
        <div class="container">
            <div class="slideimage">
               
            </div>
            <div id="cont">
                <div class="leftside">
               
	           <h2>계절별 사진</h2>
                    <div class="leftfunc">
                        <div class="spring">
                        <h3>봄</h3>
                        </div>
                        <div class="summer">
                        <h3>여름</h3>
                        </div>
                        <div class="fall">
                        <h3>가을</h3>
                        </div>
                        <div class="winter">
                        <h3>겨울</h3>
                        </div>
                    </div>
                </div> 
                <div class="content">
                    <div class="main">
                    </div>
                    <div class = "map">
                        <img src="map.PNG" alt="map" id="first">
                        <div class="boxes" id="firstA">서울</div>
                        <div class="boxes" id="firstB">경기도</div>
                        <div class="boxes" id="twoB">강원도</div>
                        <div class="boxes" id="threeB">충청남도</div>
                        <div class="boxes" id="fourB">충청북도</div>
                        <div class="boxes" id="fiveB">경상북도</div>
                        <div class="boxes" id="sixB">전라북도</div>
                        <div class="boxes" id="sevenB">전라남도</div>
                        <div class="boxes" id="eightB">경상남도</div>
                        <div class="boxes" id="nineB">제주도</div>
			            <div class="boxes" id="tenB">인천</div>
                    </div>
                </div>
                <div class="rightside">
                    <div class="rightfunc">
                    <a id="info"></a>
                    </div>
                </div>
            </div>
            </div>
            <footer>
                    <p>copyright &copy; inu.ac.kr</p>
            </footer>
        
    </body>
</html>
