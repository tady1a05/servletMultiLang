<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head></head>
<body>
	<a href="index.jsp?theLocale=en_US">English (US)</a>
	<a href="index.jsp?theLocale=ja_JA">Japanese (JA)</a>
	<a href="index.jsp?theLocale=zh_HK">Chinese (HK))</a>

	<c:set var="theLocale"
	value="${not empty param.theLocale? param.theLocale : pageContext.request.locale}"
	scope="session"/>
	"${theLocale}"
	<fmt:setLocale value="${theLocale}" />
	
	<fmt:setBundle basename="com.toby.test.resources.mylabel"/>
	
	<fmt:message key="label.greeting" />
	<fmt:message key="label.firstname" />
	<fmt:message key="label.lastname" />
	<fmt:message key="label.welcome" />
</body>
</html>