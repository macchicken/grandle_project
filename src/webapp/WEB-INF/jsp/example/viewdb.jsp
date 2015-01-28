<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>View People</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
  <h3>People in database</h3>
    
    <s:if test="personList.size > 0">
       <ol>
         <s:iterator value="personList">
	  		<li>
	  			<s:property value="firstName" />
	  			<s:property value="lastName" /> 
	  			<%--Put the name of the method we want to call
	  			in front of Person.  This action will cause
	  			the method named edit to be called in the
	  			ActionSupport class (see struts.xml)  --%>
  				<s:url action="editDatabase" var="editDBUrl">
				       <s:param name="id" value="id"/>
			    </s:url>
                <s:url action="deleteDatabase" var="deleteDBUrl">
				       <s:param name="id" value="id"/>
			    </s:url>
			    
	  			<a href="${editDBUrl}" >Edit</a>
	  			<a href="${deleteDBUrl}" >Delete</a>
	  		</li>
		</s:iterator>
       </ol>
    </s:if>
 
	<%--Put the name of the method we want to call
    in front of Person.  This action will cause
    the method named create to be called in the
    ActionSupport class (see struts.xml)  --%>   
	<s:url action="createDatabase" var="newDBUrl">
       <s:param name="id" value=""/>
     </s:url>
     
    <p><a href="${newDBUrl}" > Create new person.</a></p>
    <p><a href="<s:url action='index' />" >back to hello word Welcome</a>.</p>
  </body>
</html>