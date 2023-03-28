<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <body>
        <h2>Hello, test world.</h2>
        <%
		String email = request.getParameter("email");
		String name = request.getParameter("name");
	    %>
        <p>Welcome, <%= name %>!</p>
        <p>Your email is: <%= email %></p>
    </body>     
</html>
