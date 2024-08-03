<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .form-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }
    .form-container h2 {
        margin-bottom: 20px;
        text-align: center;
    }
    .form-container .form-group {
        margin-bottom: 15px;
    }
    .form-container button {
        width: 100%;
        background-color: #28a745;
        border-color: #28a745;
    }
    .form-container button:hover {
        background-color: #218838;
        border-color: #1e7e34;
    }
</style>
</head>
<body>
<div class="form-container">
    <h2>Register</h2>
    <form action="register" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter ID" name="ID" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Name" name="Name" required>
        </div>
        <div class="form-group">
            <input type="email" class="form-control" placeholder="Enter Email" name="Email" required>
        </div>
        <button type="submit" class="btn btn-success">SUBMIT</button>
    </form>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
