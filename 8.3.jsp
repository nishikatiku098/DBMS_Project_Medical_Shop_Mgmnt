<%-- 
    Document   : 8.3.jsp
    Created on : 14 Nov, 2018, 10:08:45 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <p><a href="8.2.jsp"><b><font face="ink free" color="red" size="6">View Cart</font></b></a></p>
         <p><a href="8.jsp"><b><font face="ink free" color="red" size="6">Add Again</font></b></a></p>
               <br>
              <button class="button button1">Complete Purchase</button>
     </form> </center></body>
</html>