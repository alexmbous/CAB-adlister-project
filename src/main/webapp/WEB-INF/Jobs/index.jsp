<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Jobs" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<u><h1 class="text-center">Current Job Listings</h1></u>
<div class="container-fluid">
    <div class="ads">
    <c:forEach var="job" items="${jobs}">
        <div class="card">
                <a  href="/jobs/show?id=${job.id}" class="card-link"><h4>${job.title}</h4></a>
            <u><h5 class="card-subtitle mb-2">${job.rest_name}</h5></u>
                <a href="/jobs/alljobs?id=${job.user_id}" class="card-link">More from ${job.rest_name}</a>
            </div>
    </c:forEach>
    </div>
</div>
</body>
</html>
