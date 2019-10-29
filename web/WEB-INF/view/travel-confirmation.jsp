<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abby-
  Date: 10/23/2019
  Time: 7:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Travel Confirmation</title>
</head>
<body>
Home Country: ${bill.homeCountry}
<br/>
Host Country: ${bill.hostCountry}
<br/>
Grade Level: ${bill.gradeLevel}
<br/>
Semester: ${bill.semester}
<br/>
Languages Spoken:
<ul>
    <c:forEach items="${bill.spokenLanguages}" var="aLanguage">
        <li>${aLanguage}</li>


    </c:forEach>

</ul>


</body>
</html>
