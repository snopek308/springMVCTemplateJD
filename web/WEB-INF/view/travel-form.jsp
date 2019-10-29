<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Travel Form</title>
    <style>
        .error{
            color: red;
            font-size: xx-small;
        }

    </style>
</head>
<body>



    <form:form action="processForm" modelAttribute="bill">

        First Name* <form:input path="firstName"/>
        <form:errors path="firstName" cssClass="error"/>
        <br/>
        Last Name* <form:input path="lastName"/>
        <form:errors path="lastName" cssClass="error"/>
        <br/>

        Home Country
        <form:select path="homeCountry">
            <form:option label="France" value="FR" />
            <form:option label="Brazil" value="BR" />
            <form:option label="Scotland" value="SC" />
        </form:select>
        <br/>

        <form:select path="hostCountry">
            <form:options items="${countries.countryOptions}"/>
        <br/>
            Grade Level:
            <form:select path="gradeLevel">
                <form:options items="${gradeLevelsAttr}" />
            </form:select>
        </form:select>

        Spoken Languages:
        <form:checkbox path="spokenLanguages" value="English"/> English
        <br/>
        <form:checkbox path="spokenLanguages" value="Spanish"/> Spanish.
        <br/>
        <form:checkbox path="spokenLanguages" value="Japanese"/> Japanese
        <br/>

        <input type="submit">

        <br/><br/>

        <label><form:radiobutton path="semester" value="Spring" checked="true"/>Spring</label>
        <br/><br/>
        <label><form:radiobutton path="semester" value="Summer"/>Summer</label>
        <br/><br/>
        <label><form:radiobutton path="semester" value="Fall"/>Fall</label>
        <br/><br/>

        <form:radiobuttons path="travelMethod" items="${travelsBy}"/>
        Semester: ${bill.semester}
        Travel Method: ${bill.travelMethod}



    </form:form>


</body>
</html>
