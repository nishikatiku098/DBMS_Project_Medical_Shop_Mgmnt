<%-- 
    Document   : 6
    Created on : 3 Oct, 2018, 8:46:38 PM
    Author     : NISHIKA TIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         
             body{
                background-image: url("folder/nur.jpg");
                background-repeat:no-repeat;
                background-size:23%;
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
#div4 {
    color: red;
    color: green;
}
           #div5 {
    color: red;
    color: green;
}
#div6 {
    color: red;
    color: green;
}
           #div7 {
    color: red;
    color: green;
}
#div8 {
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
             <form action="10.jsp" method="POST">
            
        <h1><font face="ink free" color="red" size="8">Enter The Stock Details</font></h1>
       
    <table border="0" cellspacing="5" cellpadding="5">
        
        <tbody>
             <tr>
                <td><b><font face="ink free" color="black" size="6">Batch Number</td>
                <td><input type="text" name="batch_no" placeholder="Batch Number" required="required" id="batch_no"  onblur="validate4(this)" value="" /><div id="div4"></div></td>
            </tr>
              <tr>
                <td><b><font face="ink free" color="black" size="6">Medicine Name</td>
                <td><input type="text" name="medi_name" placeholder="Medicine Name" required="required" id="medi_name"  onblur="FormValidation2()" value="" /><div id="div2"></div></td>
            </tr>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Quantity</font></b></td>
                <td><input type="text" name="qty" placeholder="Quantity" required="required" id="qty"  onblur="validate9(this)" value="" /></td><div id="div8"></div></td>
            </tr>
           <tr>
                <td><b><font face="ink free" color="black" size="6">Medicine Category</td>
                <td><input type="text" name="medi_cat" placeholder="Medicine Category" required="required" id="medi_cat"  onblur="FormValidation1()" value="" /><div id="div1"></div></td>
            </tr>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Profit</td>
                <td><input type="text" name="profit" placeholder="Profit" required="required" id="profit"   onblur="validate7(this)" value="" /><div id="div7"></div></td>
            </tr>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Manufacturing Date</td>
                <td><input type="text" name="mfd_date" placeholder="Manufacturing Date" required="required" id="mfd_date"  onblur="FormValidation3()" value="" /><div id="div3"></div></td>
            </tr>
            <tr>
                <td><b><font face="ink free" color="black" size="6">Expiry Date</td>
                <td><input type="text" name="exp_date" placeholder="Expiry Date" required="required" id="exp_date"  onblur="FormValidation5()" value="" /><div id="div5"></div></td>
            </tr>
           <tr>
                <td><b><font face="ink free" color="black" size="6">Price</td>
                <td><input type="text" name="price" placeholder="Price" required="required" id="price"  onblur="validate6(this)" value="" /><div id="div6"></div></td>
            </tr>
            
        </tbody>
    </table>
        <script>
     function FormValidation1(){
      var medi_cat=document.getElementById('medi_cat').value;
    if(medi_cat === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for medicine category";
        document.getElementById("div1").style.color="Red";
           document.getElementById("medi_cat").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("medi_cat").style.borderColor = "green";
        return true;
    }
}
     </script>
     <script>
     function FormValidation2(){
      var medi_name=document.getElementById('medi_name').value;
    if(medi_name === ""){
         document.getElementById("div2").innerHTML="Please Enter a value for medicine name";
        document.getElementById("div2").style.color="Red";
           document.getElementById("medi_name").style.borderColor = "Red";
             document.getElementById("div2").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div2").style.fontWeight = "bold";
               document.getElementById("div2").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div2").innerHTML="";
        document.getElementById("medi_name").style.borderColor = "green";
        return true;
    }
}
     </script>
     <script>
     function FormValidation3(){
      var mfd_date=document.getElementById('mfd_date').value;
    if(mfd_date === ""){
         document.getElementById("div3").innerHTML="Please Enter a value for manufacturing date";
        document.getElementById("div3").style.color="Red";
           document.getElementById("mfd_date").style.borderColor = "Red";
             document.getElementById("div3").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div3").style.fontWeight = "bold";
               document.getElementById("div3").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div3").innerHTML="";
        document.getElementById("mfd_date").style.borderColor = "green";
        return true;
    }
}
     </script>
      <script>
     function FormValidation5(){
      var exp_date=document.getElementById('exp_date').value;
    if(exp_date === ""){
         document.getElementById("div5").innerHTML="Please Enter a value for expiry date";
        document.getElementById("div5").style.color="Red";
           document.getElementById("exp_date").style.borderColor = "Red";
             document.getElementById("div5").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div5").style.fontWeight = "bold";
               document.getElementById("div5").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div5").innerHTML="";
        document.getElementById("exp_date").style.borderColor = "green";
        return true;
    }
}
     </script>
     <script type="text/javascript">
    function validate7(profit)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}[%]{1}$/;
              if (mob.test(profit.value) == false)
            {
               alert("Profit is a number\n\(cannot contain characters and blank values)");
               profit.style.borderColor = "red";
                profit.focus();
            }
            else
            {
                 profit.style.borderColor  = "green";
            }
            
            
        }
</script>
     <script type="text/javascript">
    function validate4(batch_no)
        { 
            var mob=/^[1-9]{1}[0-9]{6}$/;
              if (mob.test(batch_no.value) == false)
            {
               alert("Batch Number should be a 7 digit number");
               batch_no.style.borderColor = "red";
                batch_no.focus();
            }
            else
            {
                 batch_no.style.borderColor  = "green";
            }
            
            
        }
</script>
<script type="text/javascript">
    function validate6(price)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}$/;
              if (mob.test(price.value) == false)
            {
               alert("Price per tab is a number\n\(cannot contain characters and blank values)");
               price.style.borderColor = "red";
                price.focus();
            }
            else
            {
                 price.style.borderColor  = "green";
            }
            
            
        }
</script>
<script type="text/javascript">
    function validate9(qty)
        { 
            var mob=/^[1-9]{1}|[1-9]{1}[0-9]{1}$/;
              if (mob.test(qty.value) == false)
            {
               alert("Quantity is a number\n\(cannot contain characters and blank values)");
               qty.style.borderColor = "red";
                qty.focus();
            }
            else
            {
                 qty.style.borderColor  = "green";
            }
            
            
        }
</script>



       
        <button class="button button1">Submit</button>
         </form>
    </center>
    </body>
</html>
