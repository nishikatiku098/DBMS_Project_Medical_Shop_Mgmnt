<%-- 
    Document   : medi2
    Created on : 18 Nov, 2018, 12:53:42 AM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         
             body{
                background-image: url("folder/pill.jpg");
                background-repeat:no-repeat;
                background-size:20%;
                background-position:top-left;
            }
            #customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

 
            </style>
             <%@page import="java.sql.*"%> 
        <title>my_pharmacy</title>
    </head>
    <body>
         <center>
            
                 <%!
         Connection conn=null;
      Statement st=null;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
               %> <h1><font face="ink free" color="black" size="6">The Medicines Available Are</font></h1>
               
               <table id="customers">
  <tr>
    <th><b><font face="ink free" color="white" size="4">Medicine Category</th>
    <th><b><font face="ink free" color="white" size="4">Medicine Name</th>
  </tr>
               
               
     <%  ResultSet rs = st.executeQuery("select * from medicine order by medi_cat");
           while(rs.next())
           {
            
             String c=rs.getString(1);
             String d=rs.getString(2);
            
            %> 
               
                       <b> <tr></b>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=c%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=d%></b></td>
                              </tr></b>
                 
                          

           <%  
           }
           }
             catch(Exception e)
{
}
           %>
                          </center><center>
                              <a href="extra.jsp"><b><font face="ink free" color="red" size="6">Go To The Main Page</font></b><br><br>
            
         </center></body>
</html>

