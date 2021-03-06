<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Omelete!" />
    </jsp:include>
</head>
<body>
    <%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <div class="landingPage">
    <div class="container text-center">
        <div class="jumbotron">

        <img class="logo" src="CSS/img/omeleteLOGO.png" alt="omelete Logo">

            <h1>Welcome to Omelete!</h1>
                <h3>About Company</h3>
                    <h4>The most common problem in the restaurant industry is the difficulty of finding valued employees. Allow Omelete to assist. Post your job listing here and have it been seen by thousands of users. </h4>
        <form action="/jobs" method="GET">
            <input type="submit" class="btn btn-primary btn-block" value="Get Started">
        </form>
        </div>
    </div>
    </div>
</body>
</html>
