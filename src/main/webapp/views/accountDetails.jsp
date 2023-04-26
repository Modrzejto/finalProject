<%@ page import="org.mindrot.jbcrypt.BCrypt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: modrzej
  Date: 25.04.2023
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <th scope="row">Username: </th>
            <td>${user.getUsername()}</td>
        </tr>
        <tr>
            <th scope="row">Change password: </th>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/account">
                    <input placeholder="Old password" name="oldPwd" type="password">
                    <input placeholder="New password" name="newPwd" type="password">
                    <input placeholder="Confirm new password" name="confirmNewPwd" type="password">
                    <button type="submit">Change</button>
                </form>
            </td>
        </tr>
        <c:if test="${user.isSuperUser()}">
            <tr>
                <th scope="row">User list</th>
            </tr>
            <c:forEach var="user" items="${allUsers}">
                <tr>
                    <td>${user.getUsername()}</td>
                    <td>
                        <form method="post" action="/account/remove/${user.getId()}"><button type="submit">Remove</button> </form>
                        <form method="post" action="/account/grant/${user.getId()}"><button type="submit">Grant superuser</button> </form>
                        <form method="post" action="/account/revoke/${user.getId()}"><button type="submit">Revoke superuser</button> </form>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <button onclick="location.href='/'">Return</button>
</body>
</html>
