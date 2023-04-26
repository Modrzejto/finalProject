<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 22.04.2023
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table {
            border: solid black;
        }

        .carDetails {
            float: left;
            font-size: 70%;
            border: solid black;
        }

        .comparisonTable {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        .secondCarDetails {
            float: right;
            font-size: 70%;
            border: solid black;
        }

        #middle {
            display: inline-block;
            margin: 0 auto;
        }

        #container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div id="container">
        <jsp:include page="compareFirstCarDetails.jsp" />

        <jsp:include page="compareTable.jsp" />

        <jsp:include page="compareSecondCarDetails.jsp" />
    </div>
</body>
</html>
