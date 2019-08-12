<%-- 
    Document   : 3
    Created on : 3 Oct, 2018, 7:17:20 PM
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
               %><h1><font face="ink free" color="black" size="6">The Stocks Available Are</font></h1>
               <table id="customers">
                       <tr>
                   <th><font face="ink free" color="white" size="4"><b>Medicine Category</th></b>
                          <th><font face="ink free" color="white" size="4"><b>Medicine Name</th></b>
                         <th><font face="ink free" color="white" size="4"><b>Batch Number</th></b>
                          <th><font face="ink free" color="white" size="4"><b>Manufacturing Date</th></b>
                         <th><font face="ink free" color="white" size="4"><b>Price</th></b>
                       <b> <th><font face="ink free" color="white" size="4"><b><b>Profit<b></th></b><b>
                          <th><font face="ink free" color="white" size="4"><b>Expiry Date</th></b></b>
                         <th><font face="ink free" color="white" size="4"><b>Quantity</th></b>
                       </tr>
                   
           <%  ResultSet rs = st.executeQuery("select medi_cat,medi_name,batch_no,TO_CHAR(mfd_date,'DD-MM-YYYY'),price,profit,TO_CHAR(exp_date,'DD-MM-YYYY'),quantity from stock");
           while(rs.next())
           {
             String a=rs.getString(1);
             String b=rs.getString(2);
             int c=rs.getInt(3);
             String d=rs.getString(4);
              int e=rs.getInt(5);
              String f=rs.getString(6);
             String g=rs.getString(7);
             int h=rs.getInt(8);
            %> 
               
                   
                  
                       <tr></b>
                           <b><td><font face="ink free" color="black" size="4"><b><%=a%></b></td>
                           <b><td><font face="ink free" color="black" size="4"><b><%=b%></b></td>
                          <b><td><font face="ink free" color="black" size="4"><b><%=c%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=d%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=e%></b></td>
                              <b> <td><font face="ink free" color="black" size="4"<b><b><%=f%><b></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=g%></b></td>
                              <b> <td><font face="ink free" color="black" size="4"><b><%=h%></b></td></b>
                              </tr>
                   
              

           <%  
           }
           }
             catch(Exception e)
{
}
%>
             
 
   <p><a href="extra.jsp"><b><font face="ink free" color="red" size="6">Go To The Main Page</font></b></p>
   
    </center>
    </body>
</html>
