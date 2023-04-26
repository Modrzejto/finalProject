<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 18.04.2023
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
        }

        .tg td {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            overflow: hidden;
            padding: 0px 20px;
            word-break: normal;
        }

        .tg th {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            overflow: hidden;
            padding: 0px 20px;
            word-break: normal;
        }

        .tg .tg-0pky {
            border-color: inherit;
            text-align: left;
            vertical-align: top
        }

        .tg .tg-0lax {
            text-align: left;
            vertical-align: top
        }
    </style>
</head>
<body>


<table class="tg">
    <thead>
    <tr>
        <th class="tg-0pky">Generation</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="generations" items="${generations}">
        <tr>
            <td class="tg-0lax">
                <button onclick="location.href=location.href + '/${generations}'">${generations}</button>
                <br></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
