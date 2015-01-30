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
  <h3>People</h3>
    
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
  				<s:url action="editPerson" var="editUrl">
				       <s:param name="id" value="id"/>
			    </s:url>
                <s:url action="deletePerson" var="deleteUrl">
				       <s:param name="id" value="id"/>
			    </s:url>
			    
	  			<a href="javascript:void(0)" urllink="${editUrl}">Edit</a>
	  			<a href="javascript:void(0)" urllink="${deleteUrl}">Delete</a>
	  		</li>
		</s:iterator>
       </ol>
    </s:if>
 
	<%--Put the name of the method we want to call
    in front of Person.  This action will cause
    the method named create to be called in the
    ActionSupport class (see struts.xml)  --%>   
	<s:url action="createPerson" var="newUrl">
       <s:param name="id" value="0"/>
     </s:url>
     
    <p><a href="javascript:void(0)" urllink="${newUrl}"> Create new person.</a></p>
    <p><a href="javascript:void(0)" urllink="<s:url action='index' />">back to hello world Welcome</a>.</p>
	<script type="text/javascript">
		$(function ($) {
			console.log($("ol"));var temp=$("ol")[0].nextElementSibling;
			$(temp.firstChild).click(function(){
				var urllink=$(this).attr('urllink');
				$("#page-content-area").load(urllink,null, function () {console.log("Create new person div load partial page")});});
			$(temp.nextElementSibling.firstChild).click(function(){
				var urllink=$(this).attr('urllink');
				$("#page-content-area").load(urllink,null, function () {console.log("back to hello world Welcome div load partial page")});});
			$("ol").find('a').each(function(i,e){
				$(e).click(function(){$("#page-content-area").load($(e).attr('urllink'),null,function(){console.log('personList div load');});});
			});
		})
	</script>
  </body>
</html>