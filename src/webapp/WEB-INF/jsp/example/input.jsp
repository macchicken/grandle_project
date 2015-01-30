<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
		  
		  <!--<s:form action='saveOrUpdatePerson'>
		  	<p><s:textfield name="person.firstName" label="First name" /> <br />
		  	<s:textfield name="person.lastName" label="Last name" /> </p>
		  	<s:hidden name="person.id" />
		  	<s:submit value="Save" />
		  </s:form>-->
		  <form id="saveOrUpdatePersonForm" name="saveOrUpdatePersonForm" action="/grandle_project-1.0/example/saveOrUpdatePerson.action" onsubmit="return false;" method="post">
			<p></p><br><p></p><table class="wwFormTable">
		  	<tbody>
				<s:textfield name="person.firstName" label="First name" />
				<s:textfield name="person.lastName" label="Last name" />
				<s:hidden name="person.id" />
				<tr>
					<td colspan="2"><div align="right"><input type="submit" id="saveOrUpdatePerson" value="Save"></div></td>
				</tr>
		  </tbody></table></form>
		  <p><a id ="InputPersonback" name="InputPersonback" href="javascript:void(0)" urllink="<s:url action='index' />">back to hello world Welcome</a>.</p>
		  <script type="text/javascript">
			$(function ($) {
				$("#InputPersonback").on('click', function () {
					var urllink=$(this).attr('urllink');
					console.log(urllink);
					$("#page-content-area").load(urllink,null, function () {console.log("InputPersonback div load partial page")});});
				var personValidate=function(){
					return $("#saveOrUpdatePersonForm").validate({
							rules:{
								"person.firstName":{ required:true},
								"person.lastName":{ required:true}},
							messages: {
								"person.firstName": {required:"must have first name"},
								"person.lastName": {required:"must have last name"}}
							});};
				$("#saveOrUpdatePerson").click(function(){
					var validResult = personValidate();console.log(validResult);
					if (validResult.successList.length==0&&validResult.errorList.length==0){return false;}
					if (validResult.form()){
						var actionlink=$("#saveOrUpdatePersonForm").attr('action');console.log(actionlink);
						$("#page-content-area").load(actionlink,$("#saveOrUpdatePersonForm").serialize(), function (){console.log("saveOrUpdatePerson div load partial page")});
					}else{validResult.focusInvalid();}});
				$("#saveOrUpdatePerson").click();
			})
		  </script>
	  </body>
</html>