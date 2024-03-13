

<!DOCTYPE html>
<html >
<head>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>sign up</title>
    <link rel="stylesheet" href="Joinpage.css">
   
</head>
<body>
    <!-- 아이디 비번 이름 주소 -->
    <div id="signUpPage">
        <header><h1></h1></header>
        <form action="joinaccess.jsp" method="post">
            <legend>
                <input type="text" placeholder="아이디" name="id" >
                <div>
                    <input type="text" placeholder="비밀번호"  id="password" name="password">
                   
               
                </div>
                <div>
                    <input type="text" placeholder="비밀번호 재확인"  id="passwordC">
                    <p id="check"></p>
                </div>
                <input type="text" placeholder="이름" name="name"  >
                <input type="text"placeholder="주소"  name="address">
            </legend>
            <button type="submit"  >가입하기</button>
        </form>
    </div>
  
</body>
</html>