<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Update Mot de Pass</title>
    <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
     <style>
        body {
            background-color: #f8f9fa;
        }
        .min-vh-100 {
            min-height: 100vh;
            display: flex;
          
        }
      
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row min-vh-100">
            <div class="col-12">
                <header class="row">
                    <!-- Top Nav -->
                    <div class="col-12 bg-dark py-2 d-md-block d-none">
                        <div class="row">
                            <div class="col-auto me-auto">
                                <ul class="top-nav">
                                    <li>
                                       <a href="#"><i class="fa fa-envelope me-2"></i>fs.shop.ms@gmial.com</a>
                                    </li>
                                    <li>
                                       <s:url namespace="/" action="indexHome" var="lien5"></s:url><i class="fa-solid fa-house"></i>
				                             <s:a href="%{lien5}" class="fas fa-home ">&nbsp;Home</s:a>
                                    </li>
                                    <li>
                                        <s:url namespace="/" action="produits" var="lien12"></s:url>
				                     <s:a href="%{lien12}" class="fas fa-cube ">&nbsp;Produits</s:a>
                                    </li>
                     
			   
			   <li >
			      <s:url namespace="/" action="review" var="lien3"></s:url>
				  <s:a href="%{lien3}" class="fas fa-user ">&nbsp;Review</s:a>
			    </li>	
                                </ul>
                            </div>
                            <div class="col-auto">
                                <ul class="top-nav">
                                    <li>
                                        <s:url namespace="/" action="updatePassword" var="lien2"></s:url>
                                        <s:a href="%{lien2}"><i class="fas fa-user-edit me-2"></i>Changer Password</s:a>
                                    </li>
                                    <li>
                                        <s:url namespace="/" action="index" var="lien10"></s:url>
                                        <s:a href="%{lien10}"><i class="fas fa-sign-in-alt me-2"></i>Logout</s:a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </header>
                <br><br><br><br><br><br>
                <div class="text-center">
                    <h3>New Mot de Passe</h3>
                    <s:form action="save" method="post" class="d-inline-block">
                        <div class="mb-3">
                            <label class="form-label"><i class="fas fa-user"></i>User:</label>
                            <input type="text" name="login" placeholder="Enter Your Name" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><i class="fas fa-lock"></i> Password:</label>
                            <input type="password" name="pass" placeholder="New Password" class="form-control" required>
                        </div>
                        <div class="text-center">
                            <input type="submit" value="Save" class="btn btn-primary ">
                             

 
                        </div>
                    </s:form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
</body>
</html>