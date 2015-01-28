<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="HelloWorld.message"/></title>
</head>

<body>
<h1><s:text name="greeting2" /></h1>
<h2><s:property value="message"/></h2>

<h3>Languages</h3>
<ul id="HelloWorld" name="HelloWorld">
    <li>
        <s:url id="url" action="HelloWorld">
            <s:param name="request_locale">en</s:param>
        </s:url>
        <s:a class="test" href="javascript:void(0)" urllink="%{url}">English</s:a>
    </li>
    <li>
        <s:url id="url" action="HelloWorld">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:a class="test" href="javascript:void(0)" urllink="%{url}">Espanol</s:a>
    </li>
    <li>
        <s:url id="url" action="HelloWorld">
            <s:param name="request_locale">chn</s:param>
        </s:url>
        <s:a class="test" href="javascript:void(0)" urllink="%{url}">Chinese</s:a>
    </li>
    <li>
        <s:url id="url" action="HelloWorld">
            <s:param name="request_locale">chnt</s:param>
        </s:url>
        <s:a class="test" href="javascript:void(0)" urllink="%{url}">Chinese-tradition</s:a>
    </li>
</ul>
<s:checkboxlist name="test" list="values" listLabelKey="'test-' + name().toLowerCase()" />
<ul id="HelloWorldExtend" name="HelloWorldExtend">
<li>
<p><a href='javascript:void(0)' urllink='<s:url action="edit" />'>Edit your personal information</a></p>
</li>
<li>
<s:url action="createPerson" var="createPersonUrl">
       <s:param name="id" value="0"/>
</s:url>
<p><a href="javascript:void(0)" urllink="${createPersonUrl}"> Create new person</a>.</p>
</li>
<li>
<p><a href="javascript:void(0)" urllink="<s:url action='Person' />" > view current person</a>.</p>
</li>
<li>
<p><a href="javascript:void(0)" urllink="<s:url action='Database' />" > view current person in database</a>.</p>
</li>
<li>
<p><a href="javascript:void(0)" urllink="<s:url action='indexh'/>" >Another Welcome</a>.</p>
</li>
</ul>
<hr />
<s:text name="contact" />
<script type="text/javascript">
	$(function ($) {
		var temp=$("#HelloWorld").find("a");
		console.log(temp);
		$(temp).each(function (i, e) {
			$(e).on('click', function () {
				var urllink=$(this).attr('urllink');
				console.log(urllink);
				$("#page-content-area").load(urllink,null, function () {console.log("helloworld div load partial page")});
			});
		});
		var temp2=$("#HelloWorldExtend").find("a");
		console.log(temp2);
		$(temp2).each(function (i, e) {
			$(e).on('click', function () {
				var urllink=$(this).attr('urllink');
				console.log(urllink);
				$("#page-content-area").load(urllink,null, function () {console.log("helloworld div load partial page")});
			});
		});
	});
</script>
</body>
</html>
