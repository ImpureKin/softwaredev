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
        <title>User Registration Form</title>
</head>
            <%
            // Retrieve the value (if any) of the form field called 'submitted'

            String submitted =  request.getParameter("submitted"); 

            // If the Java variable 'submitted' is not null AND 'submitted' equals "yes"

            if (submitted != null && submitted.equals("yes")) {
            %>
            <body>
                <h1>Registration Successful.</h1>
                <%
                String tos = request.getParameter("tos");
                if (tos != null && tos.equals("true")) {
                    User user = new User();
                    user.setEmail(request.getParameter("email"));
                    user.setName(request.getParameter("name"));
                    user.setPassword(request.getParameter("password"));
                    user.setGender(request.getParameter("gender"));
                    user.setFavouriteColour(request.getParameter("favcol"));
                    session.setAttribute("User", user);
                %>
                <p>Welcome, <%= user.getName() %>!</p>
                <p>Your email is: <%= user.getEmail() %></p>
                <p>Your password is: <%= user.getPassword() %></p>
                <p>Your gender is: <%= user.getGender() %></p>
                <p>Your favorite color is: <%= user.getFavouriteColour() %></p>
                <p>Click <a href="index.jsp">here</a> to proceed to the main page</p>
            </body>     
            <%
                } else {
            %>
                <p>You must agree to the TOS to register. Please <a href="registration.jsp">go back</a> and agree to the TOS.</p>
            <%
                }
            %>

            <%    } else { %>
            <body>
            <h1>User Registration Form</h1>
            <form action="one.jsp" method="POST">
                    <table>
                        <tr>
                                <td><label for="email">Email:</label></td>
                                <td><input type="email" name="email" required></td>
                        </tr>
                        <tr>
                                <td><label for="name">Name:</label></td>
                                <td><input type="text" name="name" required></td>
                        </tr>
                        <tr>
                                <td><label for="password">Password:</label></td>
                                <td><input type="password" name="password" required></td>
                        </tr>
                        <tr>
                                <td><label for="gender">Gender:</label></td>
                                <td>
                                        <input type="radio" name="gender" value="male">Male
                                        <input type="radio" name="gender" value="female">Female
                                        <input type="radio" name="gender" value="other">Other
                                </td>
                        </tr>
                        <tr>
                                <td><label for="favcol">Favorite Color:</label></td>
                                <td><input type="color" name="favcol"></td>
                        </tr>
                        <tr>
                                <td><label for="tos">I agree to the Terms of Service:</label></td>
                                <td><input type="checkbox" name="tos" value="true"></td>
                        </tr>
                    </table>
                    <br>
                    <input type="submit" value="Register">
                    <input type="hidden" name="submitted" value="yes">
            </form>
            </body>
            <%   } %>
</html>
