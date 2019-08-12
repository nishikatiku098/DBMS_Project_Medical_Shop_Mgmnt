<%-- 
    Document   : register
    Created on : 27 Oct, 2018, 3:41:37 PM
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
       

  .invalid { border-color: red; }
  #error { color: red }
#div1 {
    color: red;
    color: green;
}
#div2 {
    color: red;
    color: green;
}
#div3 {
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
        <h1><font face="ink free" color="black" size="8">Registration Page</font></h1>
    
    
        
        <form name="login" id="login" action="register1.jsp" method="POST">
             <table border="0" cellspacing="5" cellpadding="5">
               
                <tbody>
                    <tr>
                        <td><h3><font face="ink free" color="black" size="6">Full Name:</font></h3><div id="div1"></div></td>
                        <td> <input type="text" name="fn" id="fn" placeholder="Full Name" required="required" onblur="FormValidation1()" value="" size="25" /></td>
                    </tr>
                    <tr>
                        <td><h3><font face="ink free" color="black" size="6">Email Id:</font></h3></td>
                        <td><input type="email" name="eid"  value="" placeholder="Email Id" required="required" onblur="validate1(this)" size="25" /></td>
                    </tr>

                    
                     <tr>
                        <td><h3><font face="ink free" color="black" size="6">Username:</font></h3><div id="div2"></div></td>
                        <td> <input type="text" name="name" id="name" placeholder="Username" required="required" value="" onblur="FormValidation2()"  size="25" /></td>
                    </tr>
                    
                    <tr>
                        <td><h3><font face="ink free" color="black" size="6">Password:</font></h3><div id="div3"></div></td>
                        <td><input type="password" name="password" id="password" placeholder="Password" required="required" onblur="FormValidation3()"value=""  size="25" /></td>
                    </tr>
                     <tr>
                        <td><h3><font face="ink free" color="black" size="6">Phone Number:</font></h3></td>
                        <td><input type="text" name="phn" id="phn" value="" placeholder="Phone Number" required="required" onblur="validate(this)"  size="25" /></td>
                    </tr>
                    
                    
                    
                </tbody>
            </table>

                      <div id="error"></div>
           

<script type="text/javascript">
    function validate(phn)
        { 
            var mob=/^[1-9]{1}[0-9]{9}$/;
              if (mob.test(phn.value) == false)
            {
               alert("Phone number should be a 10 digit number");
               phn.style.borderColor = "red";
                phn.focus();
            }
            else
            {
                 phn.style.borderColor  = "green";
            }
            
            
        }
</script>
<script type="text/javascript">
    function validate1(eid)
        { var email=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if(email.test(eid.value)== false)
            {
               alert("The entered email does not satisfy the required format");
               eid.style.borderColor = "red";
                eid.focus();
            }
            else
            {
                 eid.style.borderColor  = "green";
            }
            
            
        }
</script>


 
 
 <script>
     function FormValidation1(){
      var fn=document.getElementById('fn').value;
    if(fn === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for name";
        document.getElementById("div1").style.color="Red";
           document.getElementById("fn").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("fn").style.borderColor = "green";
        return true;
    }
}
     </script>
     
     <script>
     function FormValidation2(){
      var name=document.getElementById('name').value;
    if(name === ""){
         document.getElementById("div2").innerHTML="Please Enter a value for username";
        document.getElementById("div2").style.color="Red";
           document.getElementById("name").style.borderColor = "Red";
             document.getElementById("div2").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div2").style.fontWeight = "bold";
               document.getElementById("div2").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div2").innerHTML="";
        document.getElementById("name").style.borderColor = "green";
        return true;
    }
}
     </script>
     
     
     <script>
     function FormValidation3(){
      var password=document.getElementById('password').value;
    if(password === ""){
         document.getElementById("div3").innerHTML="Please Enter a value for password";
        document.getElementById("div3").style.color="Red";
           document.getElementById("password").style.borderColor = "Red";
             document.getElementById("div3").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div3").style.fontWeight = "bold";
               document.getElementById("div3").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div3").innerHTML="";
        document.getElementById("password").style.borderColor = "green";
        return true;
    }
}
     </script>



   <button class="button button1">Register</button>
            
           
    </center>
</body>
</html>
