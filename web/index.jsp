<%-- 
    Document   : index
    Created on : 1 May, 2017, 7:20:51 PM
    Author     : rudra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bit | Home</title>
    </head>
    <body>
        <p>New User? Register <a href="register.jsp">here</a></p>
        <h1>Admin Login</h1>
        <form name="admin_login" action="admin_login.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="admin_username" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="admin_password" value="" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Login" name="login" />
        </form>
        
        <h1>Student Login</h1>
        <form name="student_login" action="student_login.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="student_username" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="student_password" value="" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Login" name="login" />
        </form>
    </body>
</html>
