<%--
  Created by IntelliJ IDEA.
  User: 박재영
  Date: 2022-11-06
  Time: 오후 1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>도서 등록</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./validation.js"></script>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
  <div class="container">
    <h1 class = "display-3">도서 등록</h1>
  </div>
</div>
<div class="container">
  <form name="newBook" action="./processAddBook.jsp" class="form-horiontal" method="post"
        enctype="multipart/form-data">
    <div class="form-group row">
      <label class="col-sm-2">도서코드</label>
      <div class="col-sm-3">
        <input type="text" id="productId" name="bookId" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">도서명</label>
      <div class="col-sm-3">
        <input type="text" id="name" name="name" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">가격</label>
      <div class="col-sm-3">
        <input type="text" id="unitPrice" name="unitPrice" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">저자</label>
      <div class="col-sm-3">
        <input type="text" name="author" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">출판사</label>
      <div class="col-sm-3">
        <input type="text" name="publisher" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">출판일</label>
      <div class="col-sm-3">
        <input type="text" name="releaseDate" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">총 페이지 수</label>
      <div class="col-sm-3">
        <input type="text" name="totalPages" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">상세정보</label>
      <div class="col-sm-5">
        <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">분류</label>
      <div class="col-sm-3">
        <input type="text" name="category" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">재고 수</label>
      <div class="col-sm-3">
        <input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">상태</label>
      <div class="col-sm-5">
        <input type="radio" name="condition" value="New"> 신규 도서
        <input type="radio" name="condition" value="Old"> 중고 도서
        <input type="radio" name="condition" value="E-Book"> E-book
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">이미지</label>
      <div class="col-sm-5">
        <input type="file" name="productImage" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="button" value="등록" class="btn btn-primary" onclick="CheckAddProduct()">
      </div>
    </div>
  </form>
</div>
</body>
</html>