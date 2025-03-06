<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.student.entity.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Update Student</h2>
        <div class="card p-4 shadow">
            <%
                Student student = (Student) request.getAttribute("student");
            %>
            <form action="<%= request.getContextPath() %>/students/update" method="post">
                <!-- Hidden input field to send student ID -->
                <input type="hidden" name="id" value="<%= student.getId() %>">

                <div class="mb-3">
                    <label class="form-label">Name:</label>
                    <input type="text" class="form-control" name="name" value="<%= student.getName() %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email:</label>
                    <input type="email" class="form-control" name="email" value="<%= student.getEmail() %>" required>
                </div>

                <button type="submit" class="btn btn-success">Update</button>
                <a href="<%= request.getContextPath() %>/students" class="btn btn-secondary">Back to List</a>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>