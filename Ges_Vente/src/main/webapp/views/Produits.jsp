<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Listes Produits</title>
	<link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/all.min.css">
	<link rel="stylesheet" href="css/style1.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
	
	<style>
		.table {
			margin-top: 20px;
			background-color: #e8f2f8;
			border-radius: 8px;
			border: none;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		
		.table thead th {
			font-weight: bold;
			background-color: #5c9ead;
			color: #fff;
			border: none;
		}
		
		.table tbody td {
			vertical-align: middle;
			border: none;
		}
		
		.btn-success {
			background-color: #d6dfeb;
			border-color: #d6dfeb;
			border-radius: 4px;
			padding: 6px 12px;
			 transition: background-color 0.3s ease;
		}
		
		.btn-success:hover {
			background-color: #b0c7db;
			border-color: #b0c7db;
		}
	</style>
</head>
<body>

<% 
String client=(String)session.getAttribute("sessname"); 
%> 

<header class="row">
	<!-- Top Nav -->
	<div class="col-12 bg-dark py-2 d-md-block d-none">
		<div class="row">
			<div class="col-auto me-auto">
				<ul class="top-nav">
					<li>
						<a href="http://www.fst.ac.ma/site/"><i class="fa fa-envelope me-2"></i>fs.tetouan.contact@gmail.com</a>
					</li>
					<li>
						<s:url namespace="/" action="indexHome" var="lien5"></s:url>
						<i class="fa-solid fa-house"></i>
						<s:a href="%{lien5}" class="fas fa-home ">&nbsp;Home</s:a>
					</li>
					<li>
						<s:url namespace="/" action="produits" var="lien12"></s:url>
						<s:a href="%{lien12}" class="fas fa-cube ">&nbsp;Produits</s:a>
					</li>
					<li>
						<s:url namespace="/" action="comandes" var="lien4"></s:url>
						<s:a href="%{lien4}" class="fas fa-shopping-cart">&nbsp;Commandes</s:a>
					</li>
					
				</ul>
			</div>
			<div class="col-auto">
				<ul class="top-nav">
					<li>
						<s:url namespace="/" action="updatePass" var="lien2"></s:url>
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

<br><br>
<h3 class="text-center">Listes des Produits</h3>
<section class="container">
	<div class="row">
		<div class="col-12">
			<table class="table" data-toggle="table" data-search="true" data-show-columns="true" data-pagination="true">
				<thead class="thead-dark">
					<tr>
						<th data-sortable="true" data-field="code produit">code produit</th>
						
						<th data-sortable="true" data-field="nom produi">nom produit</th>
						<th>quantite</th>
						<th>prix produit</th>
						
						<th>choiser</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="produits">
						<tr>
							<td><s:property value="codePdt" /></td>
							<td><s:property value="nomPdt" /></td>
							<td><s:property value="qtePdt" /></td>
							
							<td><s:property value="prixPdt" /></td>
							<td>
								<s:url namespace="/" action="comandes" var="lien7">
									<s:param name="code">
										<s:property value="codePdt" />
									</s:param>
								</s:url>
								<s:a href="%{lien7}" value="panier" class="btn btn-success">choiser article</s:a>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>

</body>
</html>