<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Student Details</h2>
        <div class="card p-4 shadow">
            <div class="mb-3">
                <label class="form-label"><strong>ID:</strong></label>
                <span>${student.id}</span>
            </div>
            
            <div class="mb-3">
                <label class="form-label"><strong>Name:</strong></label>
                <span>${student.name}</span>
            </div>
            
            <div class="mb-3">
                <label class="form-label"><strong>Email:</strong></label>
                <span>${student.email}</span>
            </div>
            
            <a href="/students/home" class="btn btn-secondary">Back to List</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>