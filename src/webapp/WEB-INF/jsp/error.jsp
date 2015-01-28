<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head><title>Simple jsp page</title></head>
<body>
	<h4>The application has malfunctioned.</h4>
	<p>  Please contact technical support with the following information:</p> 
    <h3>Exception:</h3>
    <s:property value="exception"/>

    <h3>Stack trace:</h3>
    <pre>
        <s:property value="exceptionStack"/>
    </pre>
    <hr />
<s:text name="contact" />
</body>
</html>