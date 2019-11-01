<%-- 
    Document   : homePage
    Created on : 15 oct. 2019, 15:40:26
    Author     : willi
--%>

<%@page import="jee.pj.beans.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jee.pj.beans.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>List of Employees</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/stylesheet.css">
    </head>
    <body> 
    <%
   
            String ERR_EMP = (String) request.getAttribute("ERR_EMP");
            User user = (User)session.getAttribute("user");
            
            out.println("<h1>This is your " + user.getLogin() + "'s page</h1>");
            out.println("<h2>List of Employees</h2>");   
            out.println("<h3>Welcome " + user.getLogin() + "</h3>");
            
          
            if(ERR_EMP != null)
            {
                String ERR_SELECTION = (String) request.getAttribute("ERR_SELECTION");
                String ERR_ADD = (String) request.getAttribute("ERR_ADD");
                
                out.println("<form action='Controller' method='post'>");
                out.println("<div class='error'>");
                out.println("<p>" + ERR_EMP + "</p>");
                out.println("</div>");

                out.println("<div class='choice'>");
                out.println("<input type=\"submit\" class=\"btn btn-success\" name=\"action\" value=\"Add\"/>");
                out.println("<input type=\"submit\" class=\"btn btn-danger\" name=\"action\" value=\"Delete\"/>");
                out.println("<input type=\"submit\" class=\"btn btn-primary\" name=\"action\" value=\"Details\"/>");
                out.println("</div>");
                out.println("<button type=\"submit\" name=\"action\" value=\"Logout\" class=\"logoutButtonContainer\"><img src=\"css/logout.png\" class=\"logoutIcon\" /></button>");
            
                
                out.println("</form>");
            }   
            
        %>
    </body>
</html>
