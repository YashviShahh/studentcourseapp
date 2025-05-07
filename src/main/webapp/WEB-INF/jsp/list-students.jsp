<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>List of Students</title></head>
<body>
<h2>All Students</h2>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Action</th></tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.course.title}</td>
            <td><a href="${pageContext.request.contextPath}/students/update/${student.id}">Update</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/students/add">Add New Student</a>
</body>
</html>
