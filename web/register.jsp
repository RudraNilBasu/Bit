<%-- 
    Document   : register
    Created on : 3 May, 2017, 8:00:12 PM
    Author     : rudra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DBControl.DBEngine" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bit | Register</title>
    </head>
    <body>
        <h1>Login as admin</h1>
        <%
            String username, password;
            PreparedStatement insertAction = null;
            
            if (request.getParameter("username") != null && request.getParameter("password") != null) {
                username = request.getParameter("username");
                password = request.getParameter("password");
                
                DBEngine dbengine = new DBEngine();
                dbengine.establishConnection();
                
                Connection con = dbengine.getConnection();
                insertAction = con.prepareStatement("INSERT INTO student (username, password) "
                + "VALUES ('"+username+"','"+password+"')");
                
                insertAction.executeUpdate();
            }
            %>
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
