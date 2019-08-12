<%-- 
    Document   : 9
    Created on : 3 Oct, 2018, 10:11:46 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
         <%@page import="java.util.*"%>
         <%! 
             int t=0;%>
           
     <% String name=request.getParameter("h1");
        String address=request.getParameter("h2");
        String phn=request.getParameter("h3");
                                           %>
            
            
     <%@page import="java.sql.*"%>
     <% Random rand=new Random();
      int t=rand.nextInt(9998)+1;%>
  
    
      <%!
      Connection conn=null;
      Statement st=null;
      ResultSet rs=null;
      %>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
         String sql1="select c_id  from customer";
         rs=st.executeQuery(sql1);
         if (rs.next()==false)
        {
  String sql2="INSERT INTO customer values("+t+",'"+name+"','"+address+"',"+phn+")";
                   st.executeUpdate(sql2);%>
 <b> <font face="ink free" color="purple" size="6">The Customer Id Generated For You Is&nbsp;<%=t%></font>
         <%    }
else{
         do
         {
             int num=rs.getInt(1);
             if(num==t)
             {
                 Random rand1=new Random();
                 int s=rand1.nextInt(9998)+1;
                 String sql="INSERT INTO customer values("+s+",'"+name+"','"+address+"',"+phn+")";
                   st.executeUpdate(sql);%>
                    <b><font face="ink free" color="purple" size="6">The Customer Id Generated For You Is&nbsp;<%=s%></font>
                       
             <%} //end of if
             else
            {
             String sql2="INSERT INTO customer values("+t+",'"+name+"','"+address+"',"+phn+")";
                   st.executeUpdate(sql2);%>
 <b> <font face="ink free" color="purple" size="6">The Customer Id Generated For You Is&nbsp;<%=t%></font>
    
         <%    }//end of else
       
}while(rs.next());//end of dowhile
}//end of else
}//end of try
        catch(Exception e)
        {
           
        }

     %>
     
     
     
        
        <h1><font face="ink free" color="black" size="6">What Would You Like To Do</font></h1>
        
   
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


