<%-- 
    Document   : medi
    Created on : 18 Nov, 2018, 12:34:23 AM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style>
         
             body{
                background-image: url("folder/medication.jpg");
                background-repeat:no-repeat;
                background-size:30%;
                background-position:left;
            }
            
#div5 {
    color: red;
    color: green;
}
#div6 {
    color: red;
    color: green;
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
             <form action="medi1.jsp" method="POST">
            
        <h1><font face="ink free" color="black" size="6">Enter The Medicine Details</font></h1>
     <table border="0" cellspacing="10" cellpadding="10">
        
        <tbody>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Medicine Category</td>
                <td><input type="text" name="h1" id="h1" placeholder="Medicine Category" required="required" onblur="FormValidation5()" value="" /><div id="div5"></div></td>
            </tr>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Medicine Name</td>
                <td><input type="text" name="h2" id="h2" placeholder="Medicine Name" required="required" onblur="FormValidation6()" value="" /><div id="div6"></div></td>
            </tr>
            </tbody>
     </table>
            
            
            
        <br>
         <script>
     function FormValidation5(){
      var h1=document.getElementById('h1').value;
    if(h1 === ""){
         document.getElementById("div5").innerHTML="Please Enter a value for Customer Name";
        document.getElementById("div5").style.color="Red";
           document.getElementById("h1").style.borderColor = "Red";
             document.getElementById("div5").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div5").style.fontWeight = "bold";
               document.getElementById("div5").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div5").innerHTML="";
        document.getElementById("h1").style.borderColor = "green";
        return true;
    }
}
     </script>
      <script>
     function FormValidation6(){
      var h2=document.getElementById('h2').value;
    if(h2 === ""){
         document.getElementById("div6").innerHTML="Please Enter a value for Customer Address";
        document.getElementById("div6").style.color="Red";
           document.getElementById("h2").style.borderColor = "Red";
             document.getElementById("div6").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div6").style.fontWeight = "bold";
               document.getElementById("div6").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div6").innerHTML="";
        document.getElementById("h2").style.borderColor = "green";
        return true;
    }
}
     </script>
     
           
        <button class="button button1">Submit</button>
           
            </form>
         </center>
</body>
</html>

