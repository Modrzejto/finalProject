<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 15.04.2023
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .main {
            float: left;
            font-size: 70%;
        }

        .carDetails {
            float: left;
        }

        .comments {
            margin-top: 10%;
            float: left;
        }

        .commentsTable {
            border: black solid 2px;
            margin-top: 5%;
        }

        .returnToIndex {
            float: right;
            margin-top: 2%;
            margin-right: -12%;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="carDetails">
        <jsp:include page="details.jsp"/>
    </div>
    <div class="comments">
        <c:if test="${user != null}">
            <form:form method="post" modelAttribute="review" action="/review/add">
                <table>
                    <tbody>
                    <tr>
                        <th scope="row">${user.getUsername()}</th>
                        <td>Comment</td>
                    </tr>
                    <tr>
                        <th scope="row"><form:input path="score" type="number" placeholder="Score (ex. 7)"/>/10</th>
                        <td><form:textarea path="content" placeholder="Your review content goes here"/></td>

                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td>
                            <button type="submit">Post</button>
                        </td>
                    </tr>
                    <input type="hidden" name="carId" value="${car.id}"/>
                    <input type="hidden" name="userId" value="${user.getId()}"/>
                    <input type="hidden" name="url"
                           value="/brands/${car.make}/${car.model}/${car.generation}/${car.id}"/>
                    </tbody>
                </table>
            </form:form>
        </c:if>
        <c:if test="${allReviews != null}">
            <c:forEach var="singleReview" items="${allReviews}">
                <table class="commentsTable">
                    <tbody>
                    <tr>
                        <th scope="row">${singleReview.user.username}</th>
                    </tr>
                    <tr>
                        <th scope="row">${singleReview.score}/10</th>
                        <td>${singleReview.content}</td>
                    </tr>
                    <tr>
                        <c:if test="${user.isSuperUser() || user.getUsername().equals(singleReview.user.username)}">
                            <th scope="row">
<%--                                <form method="post" action="/review/edit/${singleReview.id}">--%>
<%--                                    <input type="hidden" name="url"--%>
<%--                                           value="/brands/${car.make}/${car.model}/${car.generation}/${car.id}"/>--%>
<%--                                    <input type="hidden" name="carId" value="${car.id}"/>--%>
<%--                                    <input type="hidden" name="userId" value="${singleReview.user.id}"/>--%>
<%--                                    <button type="submit">Edit</button>--%>
<%--                                </form>--%>
                            </th>

                            <td>
                                <form method="post" action="/review/delete/${singleReview.id}">
                                    <input type="hidden" name="url"
                                           value="/brands/${car.make}/${car.model}/${car.generation}/${car.id}"/>
                                    <button type="submit">Delete</button>
                                </form>
                            </td>
                        </c:if>
                    </tr>
                    </tbody>
                </table>
            </c:forEach>
        </c:if>
    </div>
    <div class="returnToIndex">
        <button onclick="location.href='/'">Return to index</button>
    </div>
</div>
</body>
</html>
