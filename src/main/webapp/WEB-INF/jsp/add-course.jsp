<html>
<head><title>Add Course</title></head>
<body>
<h2>Add Course</h2>
<form action="${pageContext.request.contextPath}/courses/add" method="post">
    Title: <input type="text" name="title" required /><br/>
    Description: <input type="text" name="description" required /><br/>
    <input type="submit" value="Save" />
</form>
</body>
</html>
