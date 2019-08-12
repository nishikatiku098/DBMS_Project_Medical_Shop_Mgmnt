<%-- 
    Document   : 8.2
    Created on : 14 Nov, 2018, 9:42:11 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         
             body{
                background-image: url("folder/y.jpg");
                background-repeat:no-repeat;
                background-size:25%;
                background-position:top-left;
            }
               .button {
    background-color: #3498DB  ; /* Green */
    border: none;
    color: white;
    padding: 10px 24px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius:8px;
    font-size: 16px;
    font-weight: bold;
    font-family: Ink Free;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

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
        <form action="8.3.jsp" method="POST">
      
            <%!
         Connection conn=null;
      Statement st=null;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
               %><h1><font face="ink free" color="black" size="6">The Cart Items Are</font></h1><br>
                <table id="customers">
                       <tr>
                   <b> <th><font face="ink free" color="white" size="4"><b>Medicine Category</b></th></b>
                   <b> <th><font face="ink free" color="white" size="4"><b>Medicine Name</b></th></b>
                    <b> <th><font face="ink free" color="white" size="4"><b>Price</b></th></b>
                    <b> <th><font face="ink free" color="white" size="4"><b>Quantity</b></th></b>
                    <b> <th><font face="ink free" color="white" size="4"><b>Amount</b></th></b>
                     </tr>
                  
                <%  ResultSet rs = st.executeQuery("select medi_cat,medi_name,price,quantity,amount from purchase where purchase_no=0");
                 while(rs.next())
           {
             String a=rs.getString("medi_cat");
             String b=rs.getString("medi_name");
             int c=rs.getInt("price");
             int d=rs.getInt("quantity");
             int e=rs.getInt("amount");

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
 <button class="button button1">Go Back</button>
     </form>
    </center>
    </body>
</html>