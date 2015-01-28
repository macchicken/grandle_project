<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Register</title>
</head>
<body>
<h1><s:text name="greeting2" /></h1>
<h3>Register for a prize by completing this form.</h3>
 
<s:form action="register">
      <!--<s:textfield name="person.firstName" label="First name" />
      <s:textfield name="person.lastName" label="Last name" />
      <s:textfield name="person.email"  label ="Email"/>  
      <s:textfield name="person.age"  label="Age"  />-->
      <s:textfield key="person.firstName"/>
      <s:textfield key="person.lastName"/>
      <s:textfield key="person.email"/>
      <s:textfield key="person.age"/>
      <s:submit/>
</s:form> 
  <p><a href="<s:url action='indexh' />" >back to Another Welcome</a>.</p>
  <hr />
<s:text name="contact" />
</body>
</html>