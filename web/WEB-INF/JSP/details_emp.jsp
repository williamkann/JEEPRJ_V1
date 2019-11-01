<%-- 
    Document   : details
    Created on : 17 oct. 2019, 22:42:30
    Author     : willi
--%>

<%@page import="jee.pj.beans.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/stylesheet.css">
        <title>Details</title>
    </head>
    <body>
        
        <%
        Employee employee = (Employee)request.getAttribute("employee");
        String ERR_EMAIL = (String)request.getAttribute("ERR_EMAIL");
        String ERR_MOBPHONE = (String)request.getAttribute("ERR_MOBPHONE");
        String ERR_HOMEPHONE = (String)request.getAttribute("ERR_HOMEPHONE");
        String ERR_WORKPHONE = (String)request.getAttribute("ERR_WORKPHONE");
        
        out.println("<h1>Details about " + employee.getFirst_name() + " " + employee.getName() + "</h1>");
        out.println("<div class='container details'>");
        out.println("<form method='post' action='Controller'>");
        out.println("<div form-group>");
        out.println("<input type=\"hidden\" value=\"" + employee.getId() + "\" name=\"id\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"name\">Nom</label>");
        out.println("<input type=\"text\" name=\"name\" value = \"" + employee.getName() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"first_name\">Prénom</label>");
        out.println("<input type=\"text\" name=\"first_name\" value = \"" + employee.getFirst_name() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"homePhone\">Tél dom</label>");
        out.println("<input type=\"text\" name=\"homePhone\" value = \"" + employee.getHome_phone() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"mobilePhone\">Tél mob</label>");
        out.println("<input type=\"text\" name=\"mobilePhone\" value = \"" + employee.getMobile_phone() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"workPhone\">Tél pro</label>");
        out.println("<input type=\"text\" name=\"workPhone\" value = \"" + employee.getWork_phone() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"address\">Adresse</label>");
        out.println("<input type=\"text\" name=\"address\" value = \"" + employee.getAddress() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"postalCode\">Code Postal</label>");    
        out.println("<input type=\"text\" name=\"postalCode\" value = \"" + employee.getPostal_code() + "\" size=\"35\" disabled/>"); 
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"city\">Ville</label>");    
        out.println("<input type=\"text\" name=\"city\" value = \"" + employee.getCity() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div>");
        out.println("<label for=\"city\">Email</label>");    
        out.println("<input type=\"text\" name=\"email\" value = \"" + employee.getEmail() + "\" size=\"35\" disabled/>");
        out.println("</div>");
        out.println("<div class='error'>");
        if(ERR_EMAIL != null)
            out.println("<p>" + ERR_EMAIL + "</p>");
        
        if(ERR_WORKPHONE != null)
            out.println("<p>" + ERR_WORKPHONE + "</p>");
        
        if(ERR_HOMEPHONE != null)
            out.println("<p>" + ERR_HOMEPHONE + "</p>");
        
        if(ERR_MOBPHONE != null)
            out.println("<p>" + ERR_MOBPHONE + "</p>");  
        out.println("</div>");
        
        out.println("<div class='change'>");
        out.println("<input type=\"submit\" class=\"btn btn-danger\" name=\"detailAction\" value=\"Cancel\"/>");
        out.println("</div>");
        
        out.println("</div>");
        out.println("</form>");
        %>
    </body>
</html>
