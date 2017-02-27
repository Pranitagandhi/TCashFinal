<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.regex.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
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

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
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


</style>
<script>
function validateEmail(emailField){
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test(emailField.value) == false) 
    {
        alert('Invalid Email Address');
        return false;
    }

    return true;

}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>



<body>

	<div align ="Right">
<a href ="logout">Logout</a>
</div>

<h2>Edit Profile</h2>


  <div class="imgcontainer">
  <div align ="Right">
<a href ="home">HOME</a>
</div>
    <img src="images/avatar.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
  <form method="post" action="save2" onsubmit="return validateEmail(email);">
 <!--  <label><b>Username</b></label>
  <input type="text" name="username"/> -->
  
  
    <label><b>Firstname</b></label>
    <input type="text" placeholder="Enter First name" name="fname" required>

    <label><b>Lastname</b></label>
    <input type="text" placeholder="Enter Last name" name="lname" required>
        
     <label><b>Email</b></label>
    <input type="text" placeholder="Enter your email address" name="email" required>
    
    <!-- <label><b>Refer your friend</b></label>
    <input type="text" placeholder="Enter your friend's name" name="refer" required> -->
    
    <button type="submit" value="save2">Save</button>
    </form>
  </div>



</body>


</html>
