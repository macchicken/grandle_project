<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
  	.label {color:blue; font-style:normal; font-weight:bold}
  </style>
    <title>Edit Person</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">    
  </head>
	  <body>
		  <s:if test="id!=null">
		    <h3>Edit Person</h3>
		  </s:if>
		  <s:else>
		  	<h3>Create Person</h3>
		  </s:else>
		  
		  <s:form action='saveOrUpdateDatabase'>
		  	<s:textfield name="person.firstName" label="First name" />
			<s:textfield name="person.lastName" label="Last name" />
			<s:textfield name="person.email" label="Email address" />
			<s:textfield name="person.phone" label="Phone number(999-999-9999)" />
			<s:select name="person.sport"  label="Favourite Sports" list="sports"/>
			<s:radio name="person.gender"  label="Gender" list="genders" />
			<s:select name="person.residency"  label="State resident" list="states" listKey="stateAbbr" listValue="stateName" />
			<s:checkbox name ="person.over21" label="21 or older" />
		  	<s:hidden name="person.id" />
		  	<s:submit  value="Save" />
		  </s:form>
		  <p><a href="<s:url action='index' />" >back to hello word Welcome</a>.</p>
	  </body>
</html>