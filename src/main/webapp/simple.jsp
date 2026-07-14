<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String name;
int age;
try{
name = (String) session.getAttribute("name");
age = (int) session.getAttribute("age");
}catch(Exception e){
    name = "不明";
    age = 0;
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>フォワード実験</title>
</head>

<body>
    <h1>フォワードの実験</h1>
    <p>このページは、SimpleServlet からフォワードされたページです。</p>
    <p>フォワードされた人の名前は、<%= name %>です。</p>
    <p>フォワードされた人の年齢は、<%= age %>歳です。</p>
</body>

</html>