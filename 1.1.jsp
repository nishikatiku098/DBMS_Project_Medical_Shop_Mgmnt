<%-- 
    Document   : 1.1
    Created on : 28 Oct, 2018, 1:16:01 PM
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
                background-repeat: no-repeat;
                background-size:30%;
                background-position:center;
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
#div4 {
    color: red;
    color: green;
}
#div5 {
    color: red;
    color: green;
}
         </style>
        <title>my_pharmacy</title>
    </head>
    <body>
    <center>
        <h1><font face="ink free" color="black" size="8">Login Page</font></h1>
        <form name="login" action="2.jsp" method="POST">
            
           
            <div id="error"></div>
            
            <table border="0" cellspacing="25" cellpadding="25">
               
                <tbody>
                    <tr>
                        <td><h3><font face="ink free" color="black" size="6">Name:</font></h3><div id="div4"></div></td>
                        <td><input type="text" name="uname" value="" id="uname"  placeholder="Name" required="required" onblur="FormValidation4()" size="25" /></td>
                    </tr>
                    <tr>
                        <td><h3><font face="ink free" color="black" size="6">Password:</font></h3><div id="div5"></div></td>
                        <td><input type="password" name="upassword" value=""  placeholder="Password" required="required" id="upassword" onblur="FormValidation5()" size="25" /></td>
                    </tr>
                </tbody>
            </table>
             
     
     <script>
     function FormValidation4(){
      var uname=document.getElementById('uname').value;
    if(uname === ""){
         document.getElementById("div4").innerHTML="Please Enter a value for username";
        document.getElementById("div4").style.color="Red";
           document.getElementById("uname").style.borderColor = "Red";
             document.getElementById("div4").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div4").style.fontWeight = "bold";
               document.getElementById("div4").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div4").innerHTML="";
        document.getElementById("uname").style.borderColor = "green";
        return true;
    }
}
     </script>
     
     
     <script>
     function FormValidation5(){
      var upassword=document.getElementById('upassword').value;
    if(upassword === ""){
         document.getElementById("div5").innerHTML="Please Enter a value for password";
        document.getElementById("div5").style.color="Red";
           document.getElementById("upassword").style.borderColor = "Red";
             document.getElementById("div5").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div5").style.fontWeight = "bold";
               document.getElementById("div5").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div5").innerHTML="";
        document.getElementById("upassword").style.borderColor = "green";
        return true;
    }
}
     </script>

             <button class="button button1">Submit</button>
            
            
             
        
   
           
        </form>
    </center>
        
    </body>
</html>
