
  <%-- 
    Document   : 12
    Created on : 3 Oct, 2018, 11:54:33 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>  
<%@page import="java.util.*"%>
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
            </style>
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
       <form action="12.1.jsp" method="POST">
        <% Random rand=new Random();
            int t=rand.nextInt(9998);
            %>
             <%!
         Connection conn;
      Statement st,st1,st2;
      ResultSet rs,rs1,rs2;
             int x=0,x1=0;
             int s=0;
             int amt=0,amt1=0; %>
       <% int oid=(int)session.getAttribute("oid");%>
       <% int cid=(int)session.getAttribute("cid");%>
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
              rs=st.executeQuery("select purchase_no from purchase");
              while(rs.next())
              {
               int num=rs.getInt("purchase_no");
             if(num==t)
             {
                 Random rand1=new Random();
                 s=rand1.nextInt(9998)+1;
                 String sql="update purchase set purchase_no="+s+"where o_id="+oid+"and c_id="+cid+"and purchase_no="+x+"";
                 st.executeUpdate(sql);%>
             <b>  <font face="ink free" color="purple" size="6">The Purchase Number Generated For You Is&nbsp;<font color="red"><%=s%></font></font>
                 <% session.setAttribute("pno",s);
            
}else
{
 String sql="update purchase set purchase_no="+t+"where o_id="+oid+"and c_id="+cid+"and purchase_no="+x+"";
             st.executeUpdate(sql);%>
             <br><br><br> <b>  <font face="ink free" color="purple" size="6">The Purchase Number Generated For You Is&nbsp;<font color="red"><%=t%></font></font>
    
<% session.setAttribute("pno",t);}
}//end of while
}//end of try
catch(Exception e)
        {
           out.println(e);
e.printStackTrace();
        }
     
     %>
    
     <br><br> <br><br> <br><br> <br>
      <button class="button button1">View The Total Amount Payable</button>
  </form>  </center>
</body>
</html>



