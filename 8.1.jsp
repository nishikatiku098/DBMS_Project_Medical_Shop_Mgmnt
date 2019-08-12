<%-- 
    Document   : 8.1
    Created on : 14 Nov, 2018, 6:23:41 PM
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
            </style>
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
        <form action="12.jsp" method="POST">
         <%@page import="java.util.*"%>
       
        <%
         String mn=request.getParameter("mn");
        String cid1=request.getParameter("cid");
        int cid=Integer.parseInt(cid1);
        String q1=request.getParameter("q");
        int q=Integer.parseInt(q1);
         %>
        <% session.setAttribute("cid",cid);%>
       
        <% int oid=(int)session.getAttribute("oid");%>
        
          <%!
              int amount=0,t=0,quan,p,p1;
         Connection conn=null;
      Statement st=null;
          String mc,mc1;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-B49A19S:1521:XE","nish","b1");
              st = conn.createStatement();
              String price="select price from stock where medi_name='"+mn+"'";
              ResultSet rr=st.executeQuery(price);
              while(rr.next())
              {
                  p1=rr.getInt("price");
              }
              int p=p1;
               String price1="select medi_cat from stock where medi_name='"+mn+"'";
              ResultSet rr1=st.executeQuery(price1);
              while(rr1.next())
              {
                  mc1=rr1.getString("medi_cat");
              }
              mc=mc1;
              
         String sql2 = "insert into purchase(medi_cat,medi_name,purchase_no,purchase_date,o_id,c_id,price,quantity)values('"+mc+"','"+mn+"',"+t+",sysdate,"+oid+","+cid+","+p+","+q+")";
     st.executeUpdate(sql2);%>
    
         <%
                         Statement st1=conn.createStatement();
                         st1.executeUpdate("create or replace procedure amtcal1 as cursor c_amt is select price as a,quantity as b from purchase where amount=0 for update; c_a number; c_b number; c_tot number; begin open c_amt; loop fetch c_amt into c_a,c_b; exit when c_amt%NOTFOUND; if(c_b!=0) then c_tot:=c_a*c_b; end if; update purchase set amount=c_tot where current of c_amt; end loop; end;");
                         CallableStatement cs1 = conn.prepareCall("{call amtcal1}");
                         ResultSet rs2 = cs1.executeQuery();
                         ResultSet rs1=st.executeQuery("select amount from purchase where medi_name='"+mn+"'");
                   while(rs1.next())
                  {
                    amount=rs1.getInt("amount");
                  }
                   
                   
             String cal="select quantity from stock where medi_name='"+mn+"'";  
              ResultSet rs3 = st.executeQuery(cal);
              while(rs3.next())
              {
                  quan=rs3.getInt("quantity");
              }
              int a=quan-q;
              
              String query="update stock set quantity="+a+"where medi_name='"+mn+"'";
              st.executeUpdate(query);     
                 
              String val="select quantity from stock where medi_name='"+mn+"'";
              ResultSet rsv=st.executeQuery(val);
              int qu=0;
              while(rsv.next())
              {
               qu=rsv.getInt("quantity");
              }
              if(qu==0)
              {%>
              <b><font face="ink free" color="green" size="6"><%=mn%> Is Over..You Need To Add It To The Stock As Soon As Possible </font><br><br>
              <%
                  
               
                
                  
 st.execute("create or replace trigger changequant6 after insert on purchase for each row declare medi_name varchar(40); quantity number(10,2); checkquant number(10,2); begin select quantity into checkquant from stock s where s.medi_name=:new.medi_name; if(:new.quantity>checkquant)then RAISE_APPLICATION_ERROR(-20250,'QTY is greater than stock qty!'); end if; end;");
                  }%>
                        
               <b><font face="ink free" color="purple" size="6">Medicine Successfully Added To Cart</font><br>
         <p><a href="8.2.jsp"><b><font face="ink free" color="red" size="6">View Cart</font></b></a></p>
         <p><a href="8.jsp"><b><font face="ink free" color="red" size="6">Add Again</font></b></a></p>
               <br>
               <button class="button button1">Complete Purchase</button><%
                   
                   
                   String expdate=null;
                   String med="select exp_date from stock where medi_name='"+mn+"'";
                   ResultSet rs0=st.executeQuery(med);
                   while(rs0.next())
                   {
                      expdate=rs0.getString("exp_date"); 
                   }
                   out.println(expdate);
                   String dateo=null;
                    String med1="select sysdate from dual";
                   ResultSet rs01=st.executeQuery(med1);
                   while(rs01.next())
                   {
                      dateo=rs01.getString("sysdate"); 
                   }
                    out.println(dateo);
                    if(expdate.compareTo(dateo)<0)
                    {
                        out.println("medicine expired");
                    }
                    else 
                        out.println("medicine can be purchased");
                        
   }//end of try
         
        catch(Exception e)
        {
        String cal="select quantity from stock where medi_name='"+mn+"'"; 
      ResultSet rs6 = st.executeQuery(cal);
              while(rs6.next())
              {
                  quan=rs6.getInt("quantity");
              }


%><br><br><br><br><br><br><b><font face="ink free" color="purple" size="6">The Number Of Medicines Present<br> In The Stock Is Only&nbsp;<font face="ink free" color="red" size="6"><%=quan%><br></font> And You Are Entering&nbsp;<font face="ink free" color="red" size="6"><%=q%></font>&nbsp;<font face="ink free" color="purple" size="6"><br>Enter Quantity Lesser Than&nbsp;<font face="ink free" color="red" size="6"><%=q%></font></font><br>
           <meta http-equiv="Refresh" content="4;url=8.jsp"/>
          <%
              
        }
        conn.close();
     %>
    
     </form> </center></body>
</html>

        
        
        
        
        
        
        
        
        
                
              
  
