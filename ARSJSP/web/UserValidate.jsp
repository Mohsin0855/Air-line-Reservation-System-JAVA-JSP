

<%@page import="java.sql.ResultSet"%>
<%@page import="files.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
      try {
            out.println("<body bgcolor='#ADD8E6'>");
             Profile p = new Profile();
            AirDao dao = new AirDao();
            p.uname = request.getParameter("uname");
            p.upassw = request.getParameter("upassw");
            
            ResultSet rs = dao.SelectByUser(p);
            while(rs.next())
            {
                
                System.out.println(rs.getString(1));
                String name=request.getParameter("uname");
                 session = request.getSession();
                session.setAttribute("uname", p.uname);
                response.sendRedirect("TicketDetails.jsp");
                
            }
            response.sendRedirect("loginpage.html");
        }
        catch(Exception ex)
        {
            
        }  










%>