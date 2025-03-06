<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Error - Student Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .error-box {
            border: 1px solid red;
            padding: 20px;
            display: inline-block;
            background-color: #f8d7da;
            color: #721c24;
        }
        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>⚠ Student Not Found!</h2>
        <p>The student you are looking for does not exist.</p>
        <a href="/students">🔙 Go Back to Student List</a>
    </div>
</body>
</html>