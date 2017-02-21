<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
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

<h2>Sign Up</h2>

<form method="post" action="save2">
  <div class="imgcontainer">
  <div align ="Right">
<a href ="Login">Login</a>
</div>
    <img src="images/t_cash1.jpg"  class="avatar">
  </div>
	</form>
  <div class="container">
  <form method="post" action="save2">
  <label><b>First name</b></label>
    <input type="text" placeholder="Enter Username" name="fname" required>
    

    <label><b>Last name</b></label>
    <input type="text" placeholder="Enter Password" name="lname" required>
    <label><b>Email ID</b></label>
    <input type="text" placeholder="Enter Mobile number" name="email" required>
        
    <button type="submit" value="save2">Save</button>
    </form>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
  </div>


</body>
</html>
