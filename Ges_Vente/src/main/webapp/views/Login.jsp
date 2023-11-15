<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
   	<link rel="stylesheet" href="css/all.min.css">
     <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container">
        <div class="form-container">
            <div class="row">
                <div class="col-md-6 side-image">
                    <img src="images/1.jpg" alt="Logo">
                </div>
                <div class="col-md-6">
                    <h2>Gestion des Ventes</h2>
                    <form action="Login" method="post">
                        <div class="form-group">
                            <label class="form-control-label"><i class="fas fa-user"></i>User:</label>
                            <input type="text" name="login" placeholder="Enter username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label"><i class="fas fa-lock"></i> Password:</label>
                            <input type="password" name="pass" placeholder="Enter password" class="form-control"required>
                        </div>
                        <input type="submit" value="Login" class="btn-login">
                    </form>
                    <div class="btn-register">
                        <p>Don't have an account? <a href="NewClient">Register</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
</body>

</html>
