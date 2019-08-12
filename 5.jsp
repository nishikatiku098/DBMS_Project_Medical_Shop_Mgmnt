<%-- 
    Document   : 5
    Created on : 3 Oct, 2018, 7:25:31 PM
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
               %> <h1><font face="ink free" color="black" size="6">The Purchase Information Is</font></h1>
           <table id="customers">
                       <tr>
                   <b> <th><font face="ink free" color="white" size="4"><b>Medicine Category</b></th></b>
                          <b> <th><font face="ink free" color="white" size="4"><b>Medicine Name</b></th></b>
                   <b>  <th><font face="ink free" color="white" size="4"><b>Purchase Number</b></th></b>
                   <b> <th><font face="ink free" color="white" size="4"><b>Purchase Date</b></th></b>
                   <b>  <th><font face="ink free" color="white" size="4"><b>Owner Id</b></th></b>
                   <b> <th><font face="ink free" color="white" size="4"><b>Customer Id</b></th></b>
                          <b> <th><font face="ink free" color="white" size="4"><b>Price</b></th></b></b>
               <b> <th><font face="ink free" color="white" size="4"><b>Quantity</b></th>
                    <b> <th><font face="ink free" color="white" size="4"><b>Amount</b></th>
               </b>
                       </tr>
                   
           <%  ResultSet rs = st.executeQuery("select medi_cat,medi_name,purchase_no,TO_CHAR(purchase_date,'DD-MM-YYYY'),o_id,c_id,price,quantity,amount from purchase");
           while(rs.next())
           {
             String a=rs.getString(1);
             String b=rs.getString(2);
             int c=rs.getInt(3);
             String d=rs.getString(4);
              int e=rs.getInt(5);
              int f=rs.getInt(6);
             int g=rs.getInt(7);
             int h=rs.getInt(8);
             int i=rs.getInt(9);
            %> 
               
                   
                  
                       <b> <tr></b>
                       <b><td><font face="ink free" color="black" size="4"><b><%=a%></b></td>
                           <b> <td><font face="ink free" color="black" size="4"><b><%=b%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=c%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=d%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=e%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"<b><b><%=f%></b></td>
                          <b> <td><font face="ink free" color="black" size="4"><b><%=g%></b></td>
                              <b> <td><font face="ink free" color="black" size="4"><b><%=h%></b></td></b>
                              <b> <td><font face="ink free" color="black" size="4"><b><%=i%></b></td></b>
              

           <%  
           }
           }
             catch(Exception e)
{
}
%>
             
<br>
<a href="extra.jsp"><b><font face="ink free" color="red" size="6">Go To The Main Page</font></b><br><br></center>
 </body>
</html>
