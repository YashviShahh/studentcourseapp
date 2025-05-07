<html>
<head><title>Update Course</title></head>
<body>
<h2>Update Course</h2>
<form action="${pageContext.request.contextPath}/courses/update/${course.id}" method="post">
    Title: <input type="text" name="title" value="${course.title}" required /><br/>
    Description: <input type="text" name="description" value="${course.description}" required /><br/>
    <input type="submit" value="Update" />
</form>
</body>
</html>
