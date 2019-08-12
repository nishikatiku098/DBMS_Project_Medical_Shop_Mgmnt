<%-- 
    Document   : 12.1.jsp
    Created on : 15 Nov, 2018, 5:04:10 PM
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
            </style>
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
        <%! 
        int amt=0,x=0;
        ResultSet rs;
        Statement st;
        Connection conn;
        %>
         <% int oid=(int)session.getAttribute("oid");%>
       <% int cid=(int)session.getAttribute("cid");%>
       <% int pno=(int)session.getAttribute("pno");%>
         <%
           try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
           String cal1="select amount from purchase where purchase_no="+pno+"";
              rs=st.executeQuery(cal1);
               
              while(rs.next())
              {
                  amt=rs.getInt("amount");
                  x=x+amt;
              }
              
              %>
              <b><font face="ink free" color="purple" size="6">The Amount To Be Paid Is&nbsp;<font color="red"><%=x%></font></font><%
                  
                  String pur1="insert into purchase1 values("+pno+","+oid+","+cid+",sysdate,"+x+")";
                  x=0;
                  st.executeUpdate(pur1);
           }
           catch(Exception e)
        {
          
        }
     
  

               %>
      <p><a href="8.jsp"><b><font face="ink free" color="red" size="6">Purchase Again</font></b></a></p>
      <p><a href="1.2.jsp"><b><font face="ink free" color="red" size="6">Go To The Main Page</font></b></a></p><br>
      <center>            
    </body>
</html>
