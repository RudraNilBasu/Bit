<%-- 
    Document   : register
    Created on : 3 May, 2017, 8:00:12 PM
    Author     : rudra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bit | Register</title>
    </head>
    <body>
        <h1>Login as admin</h1>
        <form name="Register" action="register.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="username" value="" size="15" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="password" value="" size="15" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
