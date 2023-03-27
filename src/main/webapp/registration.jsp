<%-- 
    Document   : register
    Created on : 21/03/2023, 4:17:36 PM
    Author     : eren_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>User Registration Form</title>
</head>
<body>
        <h1>User Registration Form</h1>
                <form action="welcome.jsp" method="POST">
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
                                        <td><input type="checkbox" name="tos" required></td>
                                </tr>
                        </table>
                        <br>
                        <input type="submit" value="Register">
                </form>
</body>
</html>
