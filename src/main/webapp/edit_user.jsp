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
        <title>My Account</title>
</head>
            <%
            // Retrieve the value (if any) of the form field called 'submitted'

            String submitted =  request.getParameter("submitted");
            
            // Get user
            User user = (User) session.getAttribute("User");

            // If the Java variable 'submitted' is not null AND 'submitted' equals "yes"

            if (submitted != null && submitted.equals("yes")) {
                // Update existing user details
                    
                // Get input from My Account form
                    String email = request.getParameter("email");
                    String name = request.getParameter("name");
                    String password = request.getParameter("password");
                    String gender = request.getParameter("gender");
                    String favcol = request.getParameter("favcol");
                    
                // Go through each value. If something is inputted (not null), update user
                    if (!email.isEmpty()) {
                    user.setEmail(email);
                }
                    if (!name.isEmpty()) {
                    user.setName(name);
                }
                    if (!password.isEmpty()) {
                    user.setPassword(password);
                }
                    if (gender != null) {
                    user.setGender(gender);
                }
                    if (!favcol.isEmpty()) {
                    user.setFavouriteColour(favcol);
                }
                    
                // Update session's User
                    session.setAttribute("User", user);
                    
                // Redirect to home page
                    response.sendRedirect("index.jsp");
            } else { %>
            <body>
            <h1>My Account</h1>
            <form action="edit_user.jsp" method="POST">
                
                    <p>Your email is: <%= user.getEmail() %></p>
                    <p>Your password is: <%= user.getPassword() %></p>
                    <p>Your gender is: <%= user.getGender() %></p>
                    <p>Your favorite color is: <%= user.getFavouriteColour() %></p>
                    <table>
                        <tr>
                                <td><label for="email">Email:</label></td>
                                <td><input type="email" name="email"></td>
                        </tr>
                        <tr>
                                <td><label for="name">Name:</label></td>
                                <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                                <td><label for="password">Password:</label></td>
                                <td><input type="password" name="password"></td>
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
                    </table>
                    <br>
                    <input type="submit" value="Save">
                    <input type="hidden" name="submitted" value="yes">
            </form>
            </body>
            <%   } %>
</html>
