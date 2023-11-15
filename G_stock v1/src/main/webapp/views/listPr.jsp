<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Insert title here</title>

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
 <div class="col-12 bg-dark py-2 d-md-block d-none">
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
			      <s:url namespace="/" action="index" var="lien12"></s:url>
				  <s:a href="%{lien12}" class="">Home</s:a>
			    </li>
			    <li >
			      <s:url namespace="/" action="produits" var="lien13"></s:url>
				  <s:a href="%{lien13}" class="">Stocks</s:a>
			    </li>
			    <li>
			      <s:url namespace="/" action="aproduits" var="lien14"></s:url>
				   <s:a href="%{lien14}" class="">Approvisionnements</s:a>
			    </li>
                              
                                </ul>
                            </div>
                         
                        </div>
                    </div>


	
   
	<s:url namespace="/" action="produitsp" var="lien5"></s:url>
		
		  <div class="row">
         	<div class="col-12">
				<table class="table" data-toggle="table" data-search="true" data-show-columns="true" data-pagination="true">
					<thead class="thead-dark">
					<tr>
						<th data-sortable="true" data-field="code produit">Code Produit</th>
						<th>quantite </th>
						<th>Nom Produit</th>
						<th>Description</th>
						<th >Prix Produit</th>
						<th>Supprimer</th>
						<th>Modifier</th>
					</tr>
					</thead>
					<tbody>
						<s:iterator value="produits">
						<tr>
						<td><s:property value="codePdt"/></td>
						<td><s:property value="qtePdt"/></td>
						<td><s:property value="nomPdt"/></td>
						<td><s:property value="descPdt"/></td>
						<td><s:property value="prixPdt"/></td>
						<s:url namespace="/" action="delete" var="lien6">
						<s:param name="code">
						<s:property value="codePdt"/>
						</s:param>
						</s:url>
						<s:url namespace="/" action="edit" var="lien7">
						<s:param name="code">
						<s:property value="codePdt"/>
						</s:param>
						
						
						</s:url>
						<td><s:a href="%{lien6}" class="btn btn-danger">Supprimer</s:a></td>
						<td><s:a href="%{lien7}" class="btn btn-success">Modifier</s:a></td>
						
						</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>

		
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