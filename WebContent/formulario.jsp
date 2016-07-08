<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="form" method="post">
<s:textfield name="email" placeholder="email"></s:textfield><br>
<s:password name="pass" placeholder="contraseña"></s:password><br>
<s:submit value="Ingresar"></s:submit>
</s:form>

</body>
</html>