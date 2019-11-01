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
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>List of Employees</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/stylesheet.css">
        
        
    </head>
    <body> 
        
    
    <%
        
            User user = (User)session.getAttribute("user");
            ArrayList<Employee> tableEmployee = (ArrayList<Employee>)request.getAttribute("EmployeeTable");    
            String ERR_SELECTION = (String) request.getAttribute("ERR_SELECTION");
            String ERR_ADD = (String) request.getAttribute("ERR_ADD");
            
            out.println("<h1>This is your " + user.getLogin() + "'s page</h1>");
            out.println("<h2>List of Employees</h2>");
            out.println("<h3>Welcome " + user.getLogin() + "</h3>");
            
            out.println("<form action='Controller' method='post'>");
            out.println("<table class='table table-striped table-responsive-lg'>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>SELECT</th>");
            out.println("<th>FIRSTNAME</th>");
            out.println("<th>LASTNAME</th>");
            out.println("<th>HOMEPHONE</th>");
            out.println("<th>MOBILEPHONE</th>");
            out.println("<th>WORKPHONE</th>");
            out.println("<th>ADDRESS</th>");
            out.println("<th>POSTALCODE</th>");
            out.println("<th>CITY</th>");
            out.println("<th>EMAIL</th>");
            out.println("</tr>");
            out.println("</thead>");


            out.println("<tbody>");
            for(Employee emp : tableEmployee)
            {
                out.println("<tr>");
                out.println("<td><input type=\"radio\" name=\"selection\" value=\"" + emp.getId() + "\"></td>");
                out.println("<td>" + emp.getFirst_name() + "</td>");
                out.println("<td>" + emp.getName() + "</td>");
                out.println("<td>" + emp.getHome_phone() + "</td>");
                out.println("<td>" + emp.getMobile_phone() + "</td>");
                out.println("<td>" + emp.getWork_phone() + "</td>");
                out.println("<td>" + emp.getAddress() + "</td>");
                out.println("<td>" + emp.getPostal_code() + "</td>");
                out.println("<td>" + emp.getCity() + "</td>");
                out.println("<td>" + emp.getEmail()+ "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
  
            out.println("<div class='error'>");
            if(ERR_SELECTION != null)
                out.println("<p>" + ERR_SELECTION + "</p>");
            else if(ERR_ADD != null)
                out.println("<p>" + ERR_ADD + "</p>");
            out.println("</div>");
            
            out.println("<div class='choice'>");
            out.println("<input type=\"submit\" class=\"btn btn-success\" name=\"action\" value=\"Add\"/>");
            out.println("<input type=\"submit\" class=\"btn btn-danger\" name=\"action\" value=\"Delete\"/>");
            out.println("<input type=\"submit\" class=\"btn btn-primary\" name=\"action\" value=\"Details\"/>");
            out.println("<button type=\"submit\" name=\"action\" value=\"Logout\" class=\"logoutButtonContainer\"><img src=\"css/logout.png\" class=\"logoutIcon\" /></button>");
            
            out.println("</div>");
            out.println("</form>");
        %>
    </body>
</html>
