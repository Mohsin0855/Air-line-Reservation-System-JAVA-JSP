

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="files.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Servlet ViewServlet</title>
    </head>
  <body bgcolor="#ADD8E6">
        <h1 style="text-align:center;">Admin Side</h1>
                    <table id="customers"><tr>
                            <th>Flight Id</th>
                            <th>Airline Id</th>
                            <th>Airline Name</th>
                            <th>From Location</th>
                            <th>To Location</th>
                            <th>Departure Time</th>
                            <th>Arival Time</th>
                            <th>Duration</th>
                            <th>Total Seats</th>
                            <th>Flight Departure</th>
                            <th>Price</th>
                            <th>Available Seats</th>
                            <th>Edit</th><th>Delete</th></tr>
            <style> a:link,
                a:visited { background-color: #219ebc;
                          color: white;padding: 14px 20px;
                          text-align: center;
                          text-decoration: none;
                          display: inline-block;} 
                a:hover,
                a:active { background-color:#ffb703 ;}
                #customers {   font-family: Arial, Helvetica, sans-serif; 
                               border-collapse: collapse; 
                               width: 100%;}
                #customers td, 
                #customers th { 
                    border: 1px solid #ddd;
                     padding: 8px;}
                #customers tr:nth-child(even){
                    background-color: #f2f2f2;}
                #customers tr:hover {
                    background-color: #ddd;}
                #customers th {
                    padding-top: 12px;
                    padding-bottom: 12px;text-align: left;background-color: 
                        #219ebc;color: white}
            </style>
            <%  try {
                AirDao dao = new AirDao();
            ResultSet rs = dao.SelectAll();
            
            while(rs.next())
            { %>
        <tr>   <td><%=rs.getString(1)%></td>
                   <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td><a href="EditServlet?id=<%=rs.getString(1)%>">Edit</a></td>
                    <td><a href="DeleteServlet?id=<%=rs.getString(1)%>">Delete</a></td>
        
        </tr>
        <%  } %>
                    </table>
                    <br>
                    <a href='Flightd.html'>Insert</a>
                    <a href='adminhome.html'>Go Back</a>
                    <a href='index.html'>Logout</a>
                        <% }
        catch (SQLException ex) {
            
        }
        %>
        
        
    </body>
</html>
