<%-- 
    Document   : register
    Created on : 21/03/2023, 4:17:36 PM
    Author     : eren_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uts.eren.User" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Index / Main Page</title>
</head>
    <body>
        <% 
        // get the user
        User user = (User) session.getAttribute("User");
        if (user != null) {
        // Get name and email
        String name = user.getName();
        String email = user.getEmail();
        %>
        <p>You are logged in as <%=name%> (<%=email%>)</p>
        <a href="logout.jsp">Logout</a>
        <br>
        <p><a href="edit_user.jsp">My Account</a></p>
        <% } else { %>
        <p>You are not logged in.</p>
        <a href="one.jsp">Register</a>
        <% } %>
    </body>
</html>
