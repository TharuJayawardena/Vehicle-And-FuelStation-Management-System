<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
background-image: url('img6.jpg');
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
<p  style="font-size:50px; color:#4d99b3"  >User Profile  </p>

    
      <c:forEach  var ="cus"  items="${cusDetails}">
      
      <c:set var="idcustomer" value="${cus.idcustomer}"/>
       <c:set var="name" value="${cus.name}"/>
        <c:set var="email" value="${cus.email}"/>
         <c:set var="phone" value="${cus.phone}"/>
         
         
 <table  style="width:100% ; border: 1px solid black;border-collapse: collapse;">
        
       <tr>
		<td style="color:#006161;">Customer ID</td>
		<td>${cus.idcustomer}</td>
	</tr>
	<tr>
		<td style="color:#006161;">Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td style="color:#006161;">Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td style="color:#006161;">Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	
	</table>
	

</c:forEach>

<c:url value="updatecustomer.jsp" var="cusupdate" >
<c:param name="idcustomer" value="${idcustomer}"/>
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="phone" value="${phone}"/>

</c:url>
<a href="${cusupdate}">
<input type="button" name="update" value="update my  Data" class="button">
</a>
<br><br>

<c:url value="deletecustomer.jsp" var="cusdelete" >
<c:param name="idcustomer" value="${idcustomer}"/>
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="phone" value="${phone}"/>

</c:url>
<a href="${cusdelete}">
<input type="button" name="delete"  value="Delete my Account" class="button">
</a>
</h1>
</body>
</html>