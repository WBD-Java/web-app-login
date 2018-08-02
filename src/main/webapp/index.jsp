<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 8/2/2018
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Index</title>

  </head>
  <body>
       <h1>Home</h1>
      <%
        String username = (String) session.getAttribute("username");
        if (username != null) {%>
            Welcome: <%= username%>  <br>
       <a href="/logout?islogout=ok">Logout</a>
       <% } %>
  </body>
</html>
