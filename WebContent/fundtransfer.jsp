<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<div align="right">
		<a href="logout">Logout</a>
	</div>
	
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password],input[type=text] {
    width: 100%;
    padding: 10px 15px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #009999;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
} */

 .imgcontainer {
    text-align: center;
    margin: 20px 0 12px 0;
} 

img.avatar {
    width: 20%;
    border-radius: 30%;
} 

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>
<script>

/* function validatemobile_no(mobile_noField){
    var reg = /\d{3}\d{3}\d{4}/;

    if (reg.test(mobile_noField.value) == false) 
    {
        alert('Invalid mobile_no');
        return false;
    }

    return true;

} */
</script>

<h2>Fund Transfer</h2>

<form method="post" action="fundcheck" >
<div align ="Right">
<a href ="home">HOME</a>
</div>
  <div class="imgcontainer">
    <img src="images/t_cash1.jpg"  class="avatar">
  </div>
  ${message}
  <div class="container">
 
  <label><b> Recepient's mobile number</b></label>
    <input type="text" placeholder="Enter Recepient's mobile number" name="recipient" required>
    

    <label><b>Amount</b></label>
    <input type="text" placeholder="Enter amount to be transferred" name="credit" >
    <label><b>Remarks</b></label>
    <input type="text" placeholder="Enter Remark" name="remark" >
        
    <button type="submit" value="fundcheck">Transfer</button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
  </div>
</form>

</body>
</html>
