<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Goals Report</title>
</head>
<body>

    <table>
        <tr>
            <th>ID</th><th>Minutes</th>
        </tr>

        <c:forEach items="${goals}" var="goal">
            <tr>
                <td>${goal.id}</td><td>${goal.minutes}</td>

                <td>
                    <table>
                        <tr>
                            <th>Excercise ID</th><th>Exercise Minutes</th><th>Exercise Activity</th>

                            <c:forEach items="${goal.exercises}" var="exercise">
                                <tr>
                                    <td>${exercise.id}</td><td>${exercise.minutes}</td><td>${exercise.activity}</td>
                                </tr>
                            </c:forEach>
                        </tr>
                    </table>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
