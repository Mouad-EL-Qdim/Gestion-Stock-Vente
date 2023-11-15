<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Produits stock </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
    <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>


	<div class="container-fluid bg-dark py-2">
        <div class="row">
            <div class="col-auto me-auto">
                <ul class="top-nav">
                    <li>
                        <a href="#"><i class="fa fa-phone-square me-2"></i>+212 586525438</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-envelope me-2"></i>fs.stock.master@gmail.com</a>
                    </li>
                    <li>
                        <s:url namespace="/" action="index" var="lien3"></s:url>
                        <s:a href="%{lien3}" class="">Home</s:a>
                    </li>
                    <li>
                        <s:url namespace="/" action="produits" var="lien1"></s:url>
                        <s:a href="%{lien1}" class="">Produit Stocks</s:a>
                    </li>
                    <li>
                        <s:url namespace="/" action="produitsapp" var="lien2"></s:url>
                        <s:a href="%{lien2}" class="">Approvisionnements</s:a>
                    </li>
                    <li>
                        <s:url namespace="/" action="save" var="lien2"></s:url>
                        <s:a href="%{lien2}" class="">ListP</s:a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<div class="container-fluid">
        <div class="row justify-content-center align-items-center" style="height: 100vh;">
            <div class="col-6">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center"> Produits Stock </h1>
                    </div>
                    <div class="card-body">
                       
                        <form action="save" method="post">
                            <div class="form-group">
                                <label for="codePdt">Code Produit</label>
                                		<s:textfield  name="produit.codePdt" class="form-control"></s:textfield>
                            </div>
                             <div class="form-group">
                                <label for="qtePdt">quantite</label>
                                <s:textfield  name="produit.qtePdt" class="form-control"></s:textfield>
                            </div>
                            <div class="form-group">
                                <label for="nomPdt">nom Produit</label>
                                <s:textfield  name="produit.nomPdt" class="form-control"></s:textfield>
                            </div>
                             <div class="form-group">
                                <label for="descPdt">description</label>
                               <s:textfield  name="produit.descPdt" class="form-control"></s:textfield>
                            </div>
                            <div class="form-group">
                                <label for="prixPdt">Prix</label>
                                <s:textfield  name="produit.prixPdt" class="form-control"></s:textfield>	
                            </div>
                            <div class="form-group">
                                <s:hidden name="Mode"></s:hidden>	
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
</body>
</html>