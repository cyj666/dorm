<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="base.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx }/static/css/bootstrap.css">
<html>
<head>
    <title>会话管理</title>   
</head>
<body>

<h5 class="text-primary">当前在线人数：<span class="text-warning">${sessionCount}人</span></h5>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>会话ID</th>
            <th>用户名</th>
            <th>主机地址</th>
            <th>最后访问时间</th>
            <th>操作</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${sessions}" var="session">
            <tr>
                <td>${session.id}</td>
                <td>${session.attributes.get("org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY")}</td>
                <td>${session.host}</td>
                <td><fmt:formatDate value="${session.lastAccessTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>                    
                     <a href="${pageContext.request.contextPath}/${session.id}/forceLogout">强制退出</a>                   
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>