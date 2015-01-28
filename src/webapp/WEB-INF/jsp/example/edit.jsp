<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
  .label {color:blue; font-style:normal; font-weight:bold}
</style>
<s:head />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts 2 Form Tags - Edit Person</title>
</head>
<body>
<h1>Update Information</h1>

<p>Use the form below to edit your information.</p>
<form id="EditpForm" name="EditpForm" action="/grandle_project-1.0/example/savenew.action" onsubmit="return false;" method="post">
<table class="wwFormTable">
<tbody>
<s:textfield key="person.firstName" />
<s:textfield key="firstName" />
<s:textfield key="person.lastName" />
<s:textfield key="person.email" />
<s:textfield key="person.phone" />
<!--<s:select key="person.sport" list="sports" />
<s:radio key="person.gender" list="genders" />
<s:select key="person.residency" list="states" listKey="stateAbbr" listValue="stateName" />
<s:checkbox key="person.over21" />
<s:checkboxlist key="person.carModels" list="carModelsAvailable" />-->
<tr>
    <td colspan="2"><div align="right">
	<button id="saveChanges" value="Save Changes">Save Changes</button>
</div></td>
</tr>
</tbody></table></form>
<div id="modal-table" class="modal fade" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header no-padding">
				<div class="table-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<span class="white">&times;</span>
					</button>
					&nbsp;
				</div>
			</div>

			<div class="modal-body no-padding">
				<table >
					<tbody>
					<tr>
						<td><label for="lastName" class="label">First name:</label></td>
						<td><input type="text" name="firstName" id="firstName"></td>
					</tr>
					<tr>
						<td><label for="lastName" class="label">Last name:</label></td>
						<td><input type="text" name="lastName" id="lastName"></td>
					</tr>
					<tr>
						<td><label for="lastName" class="label">Phone:</label></td>
						<td><input type="text" name="phone" id="phone"></td>
					</tr>
					<tr>
						<td><label for="lastName" class="label">Gender:</label></td>
						<td><input type="text" name="gender" id="gender"></td>
					</tr>
					<tr>
						<td><label for="lastName" class="label">Residency:</label></td>
						<td><input type="text" name="residency" id="residency"></td>
					</tr>
					</tbody></table>
			</div>

			<div class="modal-footer no-margin-top"></div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal-table -->
<p><a id ="EditPersonback" name="EditPersonback" href="javascript:void(0)" urllink="<s:url action='HelloWorld' />">Return to home page</a>.</p>
<script type="text/javascript">
	$(function ($) {
		console.log($("#EditPersonback"));
		var prevalidResult;
		$("#EditPersonback").on('click', function () {
			var urllink=$(this).attr('urllink');
			console.log(urllink);
			$("#page-content-area").load(urllink,null, function () {console.log("EditPersonback div load partial page")});});
		console.log($("#EditpForm"));
		var personValidate = function (forme) {
				var elements=forme.find("input:text");
				var validResult=[];
				elements.each(function(i,e){
					if (e.name==="person.firstName"){
						if ($.trim(e.value)===""){if (e.previousElementSibling==null){$("<td>must have first name</td>").insertBefore(e);}validResult.push(e);}
					}
					if (e.name==="person.lastName"){
						if ($.trim(e.value)===""){if (e.previousElementSibling==null){$("<td>must have last name</td>").insertBefore(e);}validResult.push(e);}
					}
				});
				return validResult;
			};
		var personValidateNew=function(){
			return $("#EditpForm").validate({
                    rules:{
						"person.firstName":{ 
						required:true
						},
						firstName:{ 
						required:true
						}}
					});
		};
		$("#saveChanges").click( function () {
			$("#EditpForm").removeAttr("novalidate");
			/* var validResult = personValidate($("#EditpForm")); */
			var validResult = personValidateNew();
			console.log(validResult);return false;
			if (validResult.length==0){
			var formurl=$("#EditpForm").attr('action');
			var params=$("#EditpForm").serialize();
			console.log(formurl);
			jQuery.post(formurl, $("#EditpForm").serialize()).success(function (data, tStatus) {
				console.log(data);
				console.log(tStatus);
				if (tStatus==="success"){
					if (prevalidResult!=null){
						for (e in prevalidResult){
							var mess=prevalidResult[e].previousElementSibling;
							$(mess).remove();
						}
					}
					var obj = JSON.parse(data);
					$('#modal-table').modal('show');
					$('#modal-table').find('input:text').each(function (i, e) {$(e).val(obj[e.id]); });
				}else{alert(" update failed");
				}});}else{prevalidResult=validResult;}});
	});
</script>

</body>
</html>