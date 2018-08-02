<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 8/2/2018
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <link rel="stylesheet" href="login.css" type="text/css">
</head>
<body>
<h1>Login </h1>
<%
    Cookie[] listCookie = request.getCookies();
    String user = " ";
    String pass = " ";
    int count = 0;
    if (listCookie != null) {
        while (count < listCookie.length) {
            if (listCookie[count].getName().equals("user")) {
                user = listCookie[count].getValue();
            }
            if (listCookie[count].getName().equals("pass")) {
                pass = listCookie[count].getValue();
            }
            count++;
        }
    }
%>
${error}
<form action="/login" method="post">
    <table align="center">
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" placeholder="Enter username"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" placeholder="Enter password"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="checkbox" name="remember" value="ON">Remember to me</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"></td>
        </tr>
    </table>
</form>
</body>
</html>
