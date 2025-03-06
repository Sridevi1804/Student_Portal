<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Students List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Students List</h2>
        <div class="d-flex justify-content-between mb-3">
            <h4>Student Records</h4>
            <a href="/students/new" class="btn btn-primary">Add Student</a>
        </div>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    java.util.List<com.student.entity.Student> students = (java.util.List<com.student.entity.Student>) request.getAttribute("students");
                    if (students != null) {
                        for (com.student.entity.Student student : students) {
                %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= student.getEmail() %></td>
                    <td>
                        <a href="/students/view/<%= student.getId() %>" class="btn btn-info btn-sm">View</a>
                        <a href="/students/edit/<%= student.getId() %>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="/students/delete/<%= student.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
                <% 
                        } 
                    } 
                %>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>