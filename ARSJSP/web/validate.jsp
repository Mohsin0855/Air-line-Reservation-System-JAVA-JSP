

<%@page import="java.sql.ResultSet"%>
<%@page import="files.*" contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
            
           
            
            Profile p = new Profile();
            AirDao dao = new AirDao();
            p.admin = request.getParameter("t1");
            p.pass = request.getParameter("t2");
            
            ResultSet rs = dao.SelectByUserNamePassword(p);
            while(rs.next())
            {
                
                System.out.println(rs.getString(1));
                
                session.setAttribute("t1", p.admin);
                response.sendRedirect("adminhome.html");
                
            }
            response.sendRedirect("admin.html");
        }
        catch(Exception ex)
        {
            
        }


%>