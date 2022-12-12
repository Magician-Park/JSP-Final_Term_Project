<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%
  request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>중형차 - IWASACAR</title>
  <meta name="description" content="IWASACAR 중형차">
  <link rel="icon" type="image/png" href="images/we-removebg-preview.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSS -->
  <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
  <link href="/css/style.css" rel="stylesheet">
</head>

<body>
<%
  String userID=null;
  if(session.getAttribute("userID")!=null){
    userID=(String)session.getAttribute("userID");
  }
%>
<div id="news" class="big-bg">
  <header class="page-header wrapper">
    <h1><a href="indexex.jsp"><img class="logo" src="/images/iwas.png" alt="IWASACAR"></a></h1>
    <nav>
      <ul class="main-nav">
        <li><a href="bulletinboard.jsp">중형차</a></li>
        <li><a href="bigboard.jsp">대형차</a></li>
        <li><a href="main.jsp">질문하기</a></li>
        <%
          if(userID==null){//로그인이 되어 있지 않다면
        %>
        <li><a href="login.jsp">로그인</a></li>
        <li><a href="join.jsp">회원가입</a></li>
      </ul>
      <%
      } else{//로그인이 되어있다면
      %>
      <li><a href="logoutAction.jsp">로그아웃</a></li>
      <li><a href="userUpdate.jsp">내 정보</a></li>
      </ul>
      <%
        }
      %>
    </nav>
  </header>

    <%
            BbsDAO bbs = new BbsDAO();
        %>
  <div class="news-contents wrapper">
    <article>
      <header class="post-info">
        <h2 class="post-title">중형차</h2>
        <p class="post-date"><%=bbs.getDate().substring(5, 7)%>/<%=bbs.getDate().substring(8, 10)%> <span><%=bbs.getDate().substring(0, 4)%></span></p>
        <p class="post-cat">카테고리：세단</p>
      </header>
      <img src="/images/Y-info.JPG" alt="중형차 게시글 7">
    </article>
  </div><!-- news-contents -->

  <footer>
    <div class="wrapper">
      <p><small>&copy; IWASACAR </small></p>
    </div>
  </footer>
</body>
</html>