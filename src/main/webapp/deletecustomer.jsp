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
background-image: url('img17.jpg');
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
<%
String idcustomer = request.getParameter("idcustomer");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
%>
<p style="font-size:50px; color:green">Customer Account Delete</p>
<form action="Delete" method="post" style="color:#4d99b3 ;" > 
  Customer ID <br><input type="text" name="idcustomer" value="<%=idcustomer %>" readonly><br>
  name<br><input type="text" name="name" value="<%= name%>" readonly><br>
  email<br><input type="text" name="email" value="<%= email%>" readonly><br>
  phone number<br><input type="text" name="phone" value="<%= phone%>" readonly><br>
 <br><br>
  <input type="submit" name="submit" value="Delete My Account" class="button">
</form>
</h1>
</body>
</html>