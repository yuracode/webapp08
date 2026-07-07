<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<body>
    <%
        String nickname = (String) session.getAttribute("nickname");
    %>
    <h1><%= nickname %>さんいらっしゃい！</h1>

    <form action="food" method="post">
        好きな食べ物: <input type="text" name="food" required><br>
        <input type="submit" value="送信">
    </form>
</body>
</html>