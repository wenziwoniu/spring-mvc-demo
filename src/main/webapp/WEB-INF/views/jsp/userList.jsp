<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<ul>
			<c:forEach items="${users}" var="user">
				<li>
					用户名：<span>${user.userName}</span>;
					登录名：<span>${user.userCode}</span>;
					注册日期：<span><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd" /></span>;
					<a href="${ctx}/index/detail.do?id=${user.id}" target="_blank">更多详情</a>
				</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>