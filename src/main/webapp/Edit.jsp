<%@page import="dto.Student"%>
<%@page import="dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% int id=Integer.parseInt(request.getParameter("id")); 
StudentDao dao=new StudentDao();
Student student=dao.find(id);
%>

<form action="update">
<table>
<tr><th>Id:</th><td><input type="text" name="id" value="<%=id %>" readonly="readonly"></td></tr>

<tr><th>Name:</th><td><input type="text" name="name" value="<%=student.getName()%>"></td></tr>

<tr><th>Mobile:</th><td><input type="tel" name="mobile" value="<%=student.getMobile()%>" pattern="{0-9}[10]"></td></tr>

<tr><th>Email:</th><td><input type="email" name="email" value="<%=student.getEmail()%>"></td></tr>

<tr><th>Gender:</th>

<%if(student.getGender().equals("male")) {%>

<td><input type="radio" name="gender" value="male" checked="checked">Male
<input type="radio" name="gender" value="female">Female</td></tr>
<%}else{ %>
<td><input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female" checked="checked">Female</td>
<%} %></tr>

<tr><th>Date Of Birth:</th><td><input type="date" name="dob"></td></tr>

<tr><th>Address:</th><td><textarea rows="5" cols="30" name="address" ></textarea></td></tr>

<tr><th>Languages known:</th><td>
<input type="checkbox" name="language" value="English">English
<input type="checkbox" name="language" value="Kannada">Kannada
<input type="checkbox" name="language" value="Hindi">Hindi</td></tr>

<tr><th>Country:</th><td>
<select name="country">
<option>India</option>
<option>South Korea</option>
<option>Sri Lanka</option>
</select></td></tr>

<tr>
<td><button type="reset">Cancel</button></td>
<td><button>Submit</button></td>
</tr>
</table>

</form>

<br>
<br>
<a href="Home.html"><button>Home</button></a>

</body>
</html>