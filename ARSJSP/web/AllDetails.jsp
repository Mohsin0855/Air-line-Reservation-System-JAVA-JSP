

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="files.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tickets Sold Record</title>
    </head>
    <body bgcolor="#ADD8E6">
       <h1> Users Book Tickets</h1>
       <table id="customers"><tr><th>User Name</th><th>User Email</th><th>Card Number</th><th>CCV</th></tr>
           <style> a:link, 
               a:visited { background-color: #219ebc;color: 
                             white;padding: 14px 20px;
                         text-align: center;
                         text-decoration: none;display: inline-block;}
               a:hover, 
               a:active { background-color:#ffb703 ;} 
               #customers {   font-family: Arial, Helvetica, sans-serif; 
                              border-collapse: collapse; width: 100%;}
               #customers td, 
               #customers th { border: 1px solid #ddd;padding: 8px;}
               #customers tr:nth-child(even){background-color: #f2f2f2;}
               #customers tr:hover {background-color: #ddd;}
               #customers th {padding-top: 12px;padding-bottom: 12px;text-align: left;
                   background-color: #219ebc;color: white}
           </style>
           <%
               try {
                AirDao dao = new AirDao();
            ResultSet rs = dao.SelectAllUD();
            
            while(rs.next())
            { %>
                    <tr><td><%=rs.getString(1)%></td>
                   
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td></tr>
                   
                    
                    
                    <%  }%>
               </table>
                 <br>
               <a href="adminhome.html">Go Back</a>
                
                <a href="index.html">Logout</a>
                
             
 
        <% }
        catch (SQLException ex) {
            
        }
        %>
        
           
           
    </body>
</html>
