<%@page import="view.ViewMath"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
</head>
<body>
	<%-- uzmi View objekat --%>
	<jsp:useBean id ="viewMath" class = "view.ViewMath" scope = "request">
		<jsp:setProperty name = "viewMath" property = "a" value = "0"/>
		<jsp:setProperty name = "viewMath" property = "b" value = "0"></jsp:setProperty>
		<jsp:setProperty name = "viewMath" property = "c" value = "0"></jsp:setProperty>
		<jsp:setProperty name = "viewMath" property = "errorA" value = ""></jsp:setProperty>
		<jsp:setProperty name = "viewMath" property = "errorB" value = ""></jsp:setProperty>
	</jsp:useBean>
	
	<form action="../calculator/calc" method="post">
		<table>
			<tr>
				<td>a:</td>
				<td><input type="text" id="a" name="a" value = "<jsp:getProperty name="viewMath" property = "a"></jsp:getProperty>"/></td>
				<td><jsp:getProperty name="viewMath" property = "errorA"></jsp:getProperty></td>
			</tr>
			<tr>
				<td>b:</td>
				<td><input type="text" id="b" name="b" value = "<jsp:getProperty name="viewMath" property = "b"></jsp:getProperty> "/></td>
				<td><jsp:getProperty name="viewMath" property = "errorB"></jsp:getProperty></td>
			</tr>
			<tr>
				<td>c:</td>
				<td><input type="text" id="c" name="c" readonly="readonly" value = '<jsp:getProperty name="viewMath" property = "c"></jsp:getProperty>'/></td>
			</tr>
			<tr>
				<td><input type="submit" id="op" name="op" value="plus"/></td>
				<td><input type="submit" id="op" name="op" value="minus"/></td>
			</tr>
		</table>
	</form>

</body>
</html>