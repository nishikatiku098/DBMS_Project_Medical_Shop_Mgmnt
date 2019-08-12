<%-- 
    Document   : 1.2.jsp
    Created on : 14 Nov, 2018, 10:47:52 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
                                
             body{
                background-image: url("folder/doctor.png");
                background-repeat:no-repeat;
                background-size:27%;
                background-position:left;
            }
            </style>
        <title>my_pharamcy</title>
    </head>
    <body>
    <center>
        <form action="3.jsp" method="POST">
    <%@page import="java.sql.*"%>      
   <%String x=(String)session.getAttribute("x");
    String y=(String)session.getAttribute("y");%>
      <%!
         Connection conn=null;
      Statement st=null;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
               ResultSet rs = st.executeQuery("select * from owner where login_o_name='"+x+"' and login_o_password='"+y+"'");
            
                
       
         if(rs.next())
         {
      
                int oid=rs.getInt(1);
                
                session.setAttribute("oid",oid);
                
            
       %>
         
         <h1><font face="ink free" color="black" size="8">Welcome&nbsp;</font> <font face="ink free" color="red" size="8"> <%=x%>&nbsp; </font><font face="ink free" color="black" size="8">What Would You Like To Do</font></h1>
       
            
            <table border="0" cellspacing="4" cellpadding="4">
                
                <tbody>
                    <tr>
                        <td><a href="3.jsp"><b><font face="ink free" color="blue" size="6">1. View Information About The Stocks Available</font></b></td>
                    </tr>
                    <tr>
                        <td><a href="4.jsp"><b><font face="ink free" color="orange" size="6">2. View Information About The Customer</font></b></td>
                       
                    </tr>
                    <tr>
                        <td><a href="5.jsp"><b><font face="ink free" color="purple" size="6">3. View Complete Information About The Purchase</font></b></a></td>
                        
                    </tr>
                    <tr>
                        <td><a href="sum.jsp"><b><font face="ink free" color="green" size="6">4. View The Purchase Summary</font></b></a></td>
                        
                    </tr>
                    <tr>
                        <td><a href="6.jsp"><b><font face="ink free" color="magenta" size="6">5. Add Medicines Into The Stock</font></b></td>
                    </tr>
                    <tr>
                        <td><a href="7.jsp"><b><font face="ink free" color="green" size="6">6. Register Customer</font></b></td>
                   </tr>
                    <tr>
                        <td><a href="8.jsp"><b><font face="ink free" color="violet" size="6">7. Purchase Medicines</font></b></td>

                    </tr>
                    <tr>
                        <td><a href="medi.jsp"><b><font face="ink free" color="blue" size="6">8. Add Medicines Which Are Available</font></b></td>

                    </tr>
                    <tr>
                        <td><a href="medi2.jsp"><b><font face="ink free" color="orange" size="6">9.  View Medicines Which Are Available</font></b></td>

                    </tr>
                    <tr>
                        <td><a href="11.jsp"><b><font face="ink free" color="grey" size="6">10. Logout</font></b></td>

                    </tr>
                </tbody>
            </table>
          <%}
      
      else
      {
         %>
         <b><font face="ink free" color="red" size="8">Login Failed</font> </b><br><br><br><br>
         <b><a href="1.jsp"><font face="ink free" color="purple" size="6">Login Again</font></a><br><br><br><br>
             <b><a href="register.jsp"><font face="ink free" color="blue" size="6">Register</font></a>
     <% }
         
      
  
        
          conn.close();
        }
        catch(Exception e)
        {
           out.println(e);
        }
        
     %>
        </form>
      </center>    
    </body>
</html>
