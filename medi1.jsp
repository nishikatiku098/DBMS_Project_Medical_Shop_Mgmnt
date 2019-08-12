<%-- 
    Document   : medi1
    Created on : 18 Nov, 2018, 12:40:00 AM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@page import="java.sql.*"%> 
       <style>
         
             body{
                background-image: url("folder/nurse.jpg");
                background-repeat:no-repeat;
                background-size:23%;
                background-position:left;
            }
            </style>
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
          <%!
         Connection conn=null;
      Statement st=null;
          ResultSet rs;%>
       <% String x=request.getParameter("h1");
        String y=request.getParameter("h2"); %>
        <% try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st=conn.createStatement();
              String sql="insert into medicine values('"+x+"','"+y+"')";
               st.executeUpdate(sql);
         
    }//end of try

        
        catch(Exception e)
        {
          
        }
        conn.close();
     %>   
     <b><font face="ink free" color="red" size="6">Medicine Successfully added to List</font>
            <p><font face="ink free" color="black" size="6">What Would You Like To Do</font></p>
         
            <table border="0" cellspacing="4" cellpadding="4">
                
                <tbody>
                    <tr>
                        <td><a href="3.jsp"><b><font face="ink free" color="blue" size="6">1. View Information About The Stocks Available</font></b></td>
                    </tr>
                    <tr>
                        <td><a href="4.jsp"><b><font face="ink free" color="orange" size="6">2. View Information About The Customer</font></b></td>
                       
                    </tr>
                    <tr>
                        <td><a href="5.jsp"><b><font face="ink free" color="purple" size="6">3. View Purchase Details</font></b></a></td>
                        
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
        </center>
    </body>
</html>