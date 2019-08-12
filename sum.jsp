<%-- 
    Document   : sum.jsp
    Created on : 15 Nov, 2018, 7:08:36 PM
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
               %> <h1><font face="ink free" color="black" size="6">The Purchase Summary Is</font></h1>
               <table id="customers">
                       <tr>
                   <b>  <th><font face="ink free" color="white" size="4"><b>Purchase Number</b></th></b>
                   <b>  <th><font face="ink free" color="white" size="4"><b>Owner Id</b></th></b>
                   <b> <th><font face="ink free" color="white" size="4"><b>Customer Id</b></th></b>
                    <b> <th><font face="ink free" color="white" size="4"><b>Purchase Date</b></th></b>
                    <b> <th><font face="ink free" color="white" size="4"><b>Amount</b>
               </b>
                       </tr>
                   
           <%  ResultSet rs = st.executeQuery("select purchase_no,o_id,c_id,TO_CHAR(purchase_date,'DD-MM-YYYY'),amount from purchase1");
           while(rs.next())
           {
             
              int a=rs.getInt(1);
              int b=rs.getInt(2);
              int c=rs.getInt(3);
              String d=rs.getString(4);
              int e=rs.getInt(5);
             
            %> 
               
                   
                   
                       <b> <tr></b>
                          <b><td><font face="ink free" color="black" size="4"><b><%=a%></b></td>
                           <b> <td><font face="ink free" color="black" size="4"><b><%=b%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=c%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=d%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=e%></b></td>
                              </tr></b>
                
           <%  
           }
           }
             catch(Exception e)
{
}
%>
             
<br>
<a href="extra.jsp"><b><font face="ink free" color="red" size="6">Go To The Main Page</font></b></center><br><br>
 </body>
</html>

