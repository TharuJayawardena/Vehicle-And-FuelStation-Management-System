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
background-image: url('img18.jpg');
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
<form action="update" method="post"  style="color:#5cffff ;"> 
  Customer ID <br><input type="text" name="idcustomer" value="<%=idcustomer %>" required><br>
  name<br><input type="text" name="name" value="<%= name%>" required><br>
  email<br><input type="text" name="email" value="<%= email%>" required><br>
  phone number<br><input type="text" name="phone" value="<%= phone%>" required><br>
 <br><br>
  <input type="submit" name="submit" value="update My Data" class="button">
</form>
</h1>
</body>
</html> 