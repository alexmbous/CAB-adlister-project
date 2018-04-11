<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${job.title} @ ${job.rest_name}"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div><h1>${job.rest_name}</h1></div>
            <div><h2>${job.title}</h2></div>
            <p>${job.description}</p>
            <div></div>
            <div>
                <%--<c:choose>--%>
                    <%--<c:when test='${job.url != null && job.url.trim() != ""}'>--%>
                        <%--<img class="img-rounded showImage" src="${job.url}" alt="${job.title}">--%>
                    <%--</c:when>--%>
                    <%--<c:otherwise>--%>
                        <%--<img class="img-rounded" src="">--%>
                    <%--</c:otherwise>--%>
                <%--</c:choose>--%>
            </div>

            <%--<div class="col-md-6">--%>
                <%--<h1>${job.id}</h1>--%>
                <%--<p>${job.description}</p>--%>
                <%--<c:if test="${job.categoryInt != null && job.categoryInt != 0}"><p><strong>${categories.get(job.categoryInt)}</strong></p></c:if>--%>
                <%--<c:if test="${sessionScope.user.id == job.userId}">--%>
                    <%--<div>--%>
                        <%--<form action="/delete" method="post">--%>
                            <%--<input hidden type="text" name="id" value="${job.id}">--%>
                            <%--<button>Delete</button>--%>
                        <%--</form>--%>
                        <%--<a class="btn btn-default btn-xs" href="#" role="button">Edit</a>--%>
                    <%--</div>--%>
                <%--</c:if>--%>
            <%--</div>--%>
        </div>
    </div>
</div>
</body>
</html>