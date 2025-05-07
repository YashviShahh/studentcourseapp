<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>List of Courses</title></head>
<body>
<h2>All Courses</h2>
<table border="1">
    <tr><th>ID</th><th>Title</th><th>Description</th><th>Action</th></tr>
    <c:forEach var="course" items="${courses}">
        <tr>
            <td>${course.id}</td>
            <td>${course.title}</td>
            <td>${course.description}</td>
            <td><a href="${pageContext.request.contextPath}/courses/update/${course.id}">Update</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/courses/add">Add New Course</a>
</body>
</html>
