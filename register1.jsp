<%-- 
    Document   : register1
    Created on : 28 Oct, 2018, 12:51:51 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
        <%!
        int t=0; %>
         <%@page import="java.util.*"%>  
        
       <% String x=request.getParameter("name");
        String y=request.getParameter("password");
        String z=request.getParameter("phn");
        String a=request.getParameter("fn");
        String b=request.getParameter("eid"); %>
        <h1><font face="ink free" color="green" size="8"><%=x%>&nbsp;You Have Successfully Registered</font></h1><br>
       
          
      <%@page import="java.sql.*"%>  
     <%Random rand=new Random();
      int t=rand.nextInt(9998)+1;%>
      
  
    
      <%!
         Connection conn=null;
      Statement st=null;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
         String sql1="select o_id from owner";
         ResultSet rs=st.executeQuery(sql1);
        
        if(rs.next() == false)
        {
          String sql3 = "INSERT INTO owner values("+t+",'"+a+"','"+b+"','"+x+"','"+y+"','"+z+"')";
                   st.executeUpdate(sql3);%>
 <b>  <font face="ink free" color="purple" size="6">The Owner Id Generated For You Is&nbsp;<%=t%></font>
    
         <%    }  
         else{

         do
         {
            int num=rs.getInt(1);
             if(num==t)
             {
                 Random rand1=new Random();
                 int s=rand1.nextInt(9998)+1;
                 String sql = "INSERT INTO owner values("+s+",'"+a+"','"+b+"','"+x+"','"+y+"','"+z+"')";
                   st.executeUpdate(sql);%>
                    <b> <font face="ink free" color="purple" size="6">The Owner Id Generated For You Is&nbsp;<%=s%></font>
                       
             <%} 
             else
            {
             String sql2 = "INSERT INTO owner values("+t+",'"+a+"','"+b+"','"+x+"','"+y+"','"+z+"')";
                   st.executeUpdate(sql2);%>
 <b>  <font face="ink free" color="purple" size="6">The Owner Id Generated For You Is&nbsp;<%=t%></font>
    
         <%    }
}while(rs.next());//end of while
}//end of else
}//end of try

        
        catch(Exception e)
        {
           out.println(e);
        }
        
     %>
       <br><br><br> <a href="1.1.jsp"><font face="ink free" color="red" size="6">Login</form></a> 
    </center>
</body>
</html>
