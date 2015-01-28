<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Struts 2 Application - Welcome</title>
</head>
<body>
<h1>Welcome To Struts 2!</h1>
<p><a href="<s:url action='helloSec'/>">Hello World Second</a></p>
<p>Get your own personal hello by filling out and submitting this form.</p>
 
<s:form action="HelloWorldSec">
  <s:textfield name="userName" label="Your name" />
   <s:submit value="Submit" />
</s:form>
<!--<p><a href="<s:url action='registerpage'/>">Please register</a> for our prize drawing.</p>-->
<s:url action="registerInput" var="registerInputLink">
<s:param name="request_locale">en</s:param>
</s:url>
<p><a href="${registerInputLink}">Please register</a> for our prize drawing.</p>
<h3>Registro español</h3>
<s:url action="registerInput" var="registerInputLinkES">
    <s:param name="request_locale">es</s:param>
</s:url>
<p><a href="${registerInputLinkES}">Por favor, regístrese</a> para nuestro sorteo</p>
<p><a href="<s:url action='index' />" >back to hello word Welcome</a>.</p>
<hr />
<s:text name="contact" />
</body>
</html>