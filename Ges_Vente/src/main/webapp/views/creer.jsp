<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
   <title>Register</title>
   <meta charset="UTF-8">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/all.min.css">
   <style>
      .user-icon {
         display: flex;
         align-items: center;
         justify-content: center;
         margin-bottom: 20px;
      }

      .user-icon i {
         font-size: 60px;
         color: #555;
      }
   </style>
</head>

<body>
   <div class="container">
      <div class="form-container">
         <div class="row">
            <div class="col-md-6">
               <div class="user-icon">
                  <i class="fas fa-user-circle"></i>
               </div>
               <h2>Register</h2>
               <form action="ajouter" method="post">
                  <div class="form-group">
                     <label for="username"><i class="fas fa-user"></i> User:</label>
                     <input type="text" id="username" name="login" placeholder="Enter Username" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="phone"><i class="fas fa-phone"></i> Number Phone:</label>
                     <input type="phone" id="phone" placeholder="+2126********" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="password"><i class="fas fa-lock"></i> Password:</label>
                     <input type="password" id="password" name="pass" placeholder="Enter password!!!" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="confirm-password"><i class="fas fa-lock"></i> Confirm Password:</label>
                     <input type="password" id="confirm-password" placeholder="Repeat Your password!!!" class="form-control" required>
                  </div>
                  <input type="submit" value="Sign Up" class="btn-login">
               </form>
            </div>
         </div>
          <div class="social-container">
         <h3>Sign up with:
        
           <a href="#"><i class="fab fa-google"></i></a>
           <a href="#"><i class="fab fa-facebook"></i></a>
           <a href="#"><i class="fab fa-twitter"></i></a>
         </h3>
      </div>
      </div>
     
   </div>

   <!-- jQuery -->
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
</body>
</html>
