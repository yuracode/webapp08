<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<body>
    <%
        String nickname = (String) session.getAttribute("nickname");
        String food = (String) session.getAttribute("food");
    %>
    <p><%= nickname %>さんの好きな食べ物は<%= food %>なんですね。おいしそう！</p>
    <a href="logout">セッション破棄</a>＜br>
    <a href="user">トップページへ</a>
</body>
</html>