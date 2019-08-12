<%-- 
    Document   : 8
    Created on : 3 Oct, 2018, 8:47:01 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         
             body{
                background-image: url("folder/ka.jpg");
                background-repeat:no-repeat;
                background-size:25%;
                background-position:left;
            }
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
         
             <form action="8.1.jsp" method="POST">
          <center>
        <h1><font face="ink free" color="black" size="6">Enter The Details Of The Medicine Which You Want To Purchase</font></h1
        <br>
        <br><br>
        </center>
        
                 <center>
       <table border="0"  cellspacing="8" cellpadding="8">
        
        <tbody>
           <tr>
                 <td><b><font face="ink free" color="black" size="6">Customer Id</td>
                <td><input type="text" name="cid" value="" placeholder="Customer Id" required="required" onblur="validate1(this)" /></td>
            </tr>
            
             
            <tr>
                 <td><b><font face="ink free" color="black" size="6">Medicine Name</td>
                    <td><input type="text" name="mn" placeholder="Medicine Name" required="required" id="mn" onblur="FormValidation2()" value="" /><div id="div2"></div></td>
            </tr>
            <tr>
                 <td><b><font face="ink free" color="black" size="6"> Quantity</td>
                <td><input type="text" name="q" placeholder="Quantity" required="required" value="" onblur="validate2(this)" /></td>
            </tr>
           
           </tbody>
            </table>
                 </center>
                         <center>
 <script>
     function FormValidation1(){
      var mc=document.getElementById('mc').value;
    if(mc === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for medicine category";
        document.getElementById("div1").style.color="Red";
           document.getElementById("mc").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("mc").style.borderColor = "green";
        return true;
    }
}
     </script>
      <script>
     function FormValidation2(){
      var mn=document.getElementById('mn').value;
    if(mn === ""){
         document.getElementById("div2").innerHTML="Please Enter a value for medicine name";
        document.getElementById("div2").style.color="Red";
           document.getElementById("mn").style.borderColor = "Red";
             document.getElementById("div2").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div2").style.fontWeight = "bold";
               document.getElementById("div2").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div2").innerHTML="";
        document.getElementById("mn").style.borderColor = "green";
        return true;
    }
}
     </script>
     
    
<script type="text/javascript">
    function validate2(q)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}$/;
              if (mob.test(q.value) == false)
            {
               alert("Quantity is a number\n\(cannot contain characters and blank values)");
               q.style.borderColor = "red";
                q.focus();
            }
            else
            {
                 q.style.borderColor  = "green";
            }
            
            
        }
</script>

<script type="text/javascript">
    function validate4(p)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}$/;
              if (mob.test(p.value) == false)
            {
               alert("Price per tab is a number\n\(cannot contain characters and blank values)");
               p.style.borderColor = "red";
                p.focus();
            }
            else
            {
                 p.style.borderColor  = "green";
            }
            
            
        }
</script>
<script type="text/javascript">
    function validate1(cid)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}$/;
              if (mob.test(cid.value) == false)
            {
               alert("Customer Id is a number\n\(cannot contain characters and blank values)");
               cid.style.borderColor = "red";
                cid.focus();
            }
            else
            {
                 cid.style.borderColor  = "green";
            }
            
            
        }
</script>

             <button class="button button1">Add</button>
        </center>
           </form>
         
</body>
</html>
