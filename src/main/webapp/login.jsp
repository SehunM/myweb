<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <h6>version:1.0</h6>
    <form action="login" method="POST">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>  #\转义
    </c:if>
</body>
</html>
