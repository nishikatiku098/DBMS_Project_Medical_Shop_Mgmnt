<%-- 
    Document   : 10
    Created on : 3 Oct, 2018, 10:25:50 PM
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
        <% String x=request.getParameter("medi_cat");
        String f=request.getParameter( "medi_name");   
        String y=request.getParameter("mfd_date");
        String z=request.getParameter("exp_date");
        String a=request.getParameter("batch_no");
        int q=Integer.parseInt(a);
        String b=request.getParameter("price");
        int w=Integer.parseInt(b);
        String c=request.getParameter("profit");
        String d=request.getParameter("qty");
        int t=Integer.parseInt(d);%>
        
        
          <%!
         Connection conn=null;
      Statement st=null;
          ResultSet rs;
          int quant,qu=0;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
                String sql1="select quantity from stock where medi_name='"+f+"'";
                rs=st.executeQuery(sql1);
         if(rs.next())
         {
             quant=rs.getInt("quantity"); 
            qu=quant+t;
            String sql2= "update stock set quantity="+qu+"";
            st.executeUpdate(sql2);
         }
         else{
         String sql="insert into stock values('"+x+"','"+f+"',"+q+",'"+y+"',"+w+",'"+c+"','"+z+"',"+t+")";
         st.executeUpdate(sql);
         }
   
           }//end of try

        
        catch(Exception e)
        {
           out.println(e);
        }
        conn.close();
     %>
        <b><font face="ink free" color="red" size="6">Medicine Successfully added to the stock</font>
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
                        <td><a href="medi2.jsp"><b><font face="ink free" color="orange" size="6">9. View Medicines Which Are Available</font></b></td>

                    </tr>
                    <tr>
                        <td><a href="11.jsp"><b><font face="ink free" color="grey" size="6">10. Logout</font></b></td>

                    </tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
