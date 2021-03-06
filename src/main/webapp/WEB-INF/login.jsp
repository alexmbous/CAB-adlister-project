<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <div class="job">
        <h1 class="text-center">Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>

            <c:if test="${sessionScope.errors.size() > 0}">
                <div id="errors" class="alert alert-danger">
                    <p>Unable to Login!</p>
                    <ul>
                        <c:forEach var="message" items="${errors}">
                            <li><c:out value="${message}"></c:out></li>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>


        </div>
    </div>
</body>
</html>
