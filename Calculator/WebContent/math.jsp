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
	<%
		ViewMath view;
		if(request.getAttribute("viewMath")!=null) 
			view =(ViewMath) request.getAttribute("viewMath");
		else view=new ViewMath("10","20","20");
	%>
	
	<form action="../calculator" method="post">
		<table>
			<tr>
				<td>a:</td>
				<td><input type="text" id="a" name="a" value = "<%=view.getA() %>"/></td>
			</tr>
			<tr>
				<td>b:</td>
				<td><input type="text" id="b" name="b" value = "<%=view.getB() %>"/></td>
			</tr>
			<tr>
				<td>c:</td>
				<td><input type="text" id="c" name="c" readonly="readonly" value = "<%=view.getC() %>"/></td>
			</tr>
			<tr>
				<td><input type="submit"  id="operation" name="plus" value="plus"/></td>
				<td><input type="submit"  id="operation" name="minus" value="minus"/></td>
			</tr>
		</table>
	</form>

</body>
</html>