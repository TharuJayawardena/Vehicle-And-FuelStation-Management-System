<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
h1 {text-align: center;}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
body{
background-image: url('img2.jpg');
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
<br>
<p  style="font-size:50px; color:green"  >Join with Us </p>
<form action="insert" method="post" style="color:#4d99b3 ;" >

  name<br><input type="text" name="name" required><br>
  email<br><input type="text" name="email" required><br>
  phone number<br><input type="text" name="phone" required><br>
  user name <br><input type="text" name="uid" required><br>
  Password <br><input type="password" name="psw" required><br>
  
  <input type="submit" name="submit" value="Register" class="button" >
  
  
  
  
</form>
</h1>
</body>
</html>