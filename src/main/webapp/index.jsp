<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="domain.Person"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Test Expression Language</h2>
	<% 
		String name = "";
	//	List<String> list = Arrays.asList("new");
		List<String> list = new ArrayList();
	//	list = Collections.emptyList();
		Map<String,Object> map =new HashMap<String,Object>();
		Person p = new Person();
		request.setAttribute("list", list);
		request.setAttribute("name", name);
		request.setAttribute("p", p);
		request.setAttribute("map", map);
	%>
	<p>name : ${name}</p>
	<c:if test="${!empty name}">
		<p>empty name : ${name}</p>
	</c:if>
	<c:if test="${name != ''}">
		<p>!= name : ${name}</p>
	</c:if>
	<br>
	<p>p : ${p}</p>
	<p>empty p : ${empty p}</p>
	<p>${p.age} ${p.name == '1'}</p>
	<br>
	<p>list eq null ? : ${list eq null}</p>
	<p>list eq '' ? : ${list eq ''}</p>
	<p>list.size() > 0: ${list.size() > 0}</p>
	<p>list.size() : ${list.size()}</p>
	<p>list.size : 编译出错</p>
	<p>empty list : ${empty list}</p>
	<p>empty 'null' : ${empty 'null'}</p>
	<p>empty null : ${empty null}</p>
	<p>empty '' : ${empty ''}</p>
	<p>empty ' ' : ${empty ' '}</p>
	<br/>
	<p>empty 0 : ${empty 0}</p>
	<p>empty map : ${empty map}</p>
</body>
</html>