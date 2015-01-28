<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Edit Person</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
	  <body>
		  <s:if test="id > 0">
		    <h3>Edit Person</h3>
		  </s:if>
		  <s:else>
		  	<h3>Create Person</h3>
		  </s:else>
		  
		  <s:form action='saveOrUpdatePerson'>
		  	<p><s:textfield name="person.firstName" label="First name" /> <br />
		  	<s:textfield name="person.lastName" label="Last name" /> </p>
		  	<s:hidden name="person.id" />
		  	<s:submit  value="Save" />
		  </s:form>
		  <p><a href="<s:url action='index' />" >back to hello word Welcome</a>.</p>
	  </body>
</html>