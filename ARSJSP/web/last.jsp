<%-- 
    Document   : last
    Created on : Jan 1, 2023, 5:20:28 PM
    Author     : chmoh
--%>

<%@page import="files.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Last Page</title>
    </head>
    <body bgcolor="#ADD8E6">
       <% Card c = new Card();
            
            AirDao dao = new AirDao();

            c.cnum = request.getParameter("cnum");
            c.ccv = request.getParameter("ccv");
            c.exm = request.getParameter("exm");
            c.exy = request.getParameter("exy");
            c.uname = request.getParameter("uname");
            int res = dao.InsertC(c);
            if (res > 0) {
                out.println("You bought ticket Successfully");
                response.sendRedirect("thankyou.jsp");
                
            } %>
    </body>
</html>
