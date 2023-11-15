<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Try Again</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .centre {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
        }
        .centre a {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="centre">
        <p>Usernamre or Password is Wrong, Please try Again</p>
        <a href="index" class="btn btn-primary">Click here to go back</a>
        <p>or</p>
        <a href="NewClient" class="btn btn-primary">Sign up</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>