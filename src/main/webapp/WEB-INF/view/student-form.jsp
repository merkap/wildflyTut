<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: avasyukov
  Date: 15.08.2018
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>

    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
        <%--<form:option value="France" label="France"/>--%>
        <%--<form:option value="Germany" label="Germany"/>--%>
        <%--<form:option value="India" label="India"/>--%>
    </form:select>

    <br><br>

    Favorite Language:
    Java <form:radiobutton path="favoriteLanguage" value="Java"/>
    C# <form:radiobutton path="favoriteLanguage" value="C#"/>
    PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
    Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>

    <br><br>
    <input type="submit"/>
    <br><br>
</form:form>

</body>
</html>
