<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<body>
    <h1>お名前登録</h1>
    <form action="user" method="post">
        名前: <input type="text" name="name" required><br>
        ニックネーム: <input type="text" name="nickname" required><br>
        <input type="submit" value="次へ">
    </form>
</body>
</html>