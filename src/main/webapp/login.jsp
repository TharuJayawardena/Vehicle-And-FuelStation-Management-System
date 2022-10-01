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
background-image: url('img15.jpg');
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><body>




<h1>
       <p  style="color:#008080;font-size:75px;"> Wellcome</p>
<form action="Log" method="post" style="color:#4d99b3 ;">
User name<input type="text" name="uid" required><br><br>
password<input type="password" name="pass" required><br><br>

<input type="Submit" name="submit" value="login" class="button" >
<br><br>
<a href="customerregister.jsp">
<input type="button" name="update" value="Create new Account" class="button" >
</a>

</form>
</h1>

</body>
</html>