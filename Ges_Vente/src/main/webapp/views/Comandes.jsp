<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="j" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Camande</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">

     <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style1.css">
    <style>
    	*{padding:0; margin:0; box-sizing: border-box; font-family:sans-serif;}
header{
	width: 100vw;
	min-height: 100vh;
	background: #34495e;
	font-size: 1.2rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.container{
	background: white;
	max-width: 800px;
	min-height: 500px;
	display: flex;
	justify-content:space-between;
	align-items: flex-start;
	padding: 0.5rem 1.5rem;
}
.left{
	flex-basis: 50%;
}
.right{
	flex-basis: 50%;
}
form{
	padding: 1rem;
}

h3{
	margin-top: 1rem;
	color:#2c3e50;
	}

form input[type="text"]{
	width: 100%;
	padding: 0.5rem 0.7rem;
	margin: 0.5rem 0;
	outline: none;
}

#zip{
	display: flex;
	margin-top: 0.5rem;
}
#zip select{
	padding: 0.5rem 0.7rem;
}
#zip input[type="number"]{
	padding: 0.5rem 0.7rem;
	margin-left: 5px;	
}
input[type="submit"]{
	width: 100%;
	padding: 0.7rem 1.5rem;
	background: #34495e;
	color: white;
	border: none;
	outline: none;
	margin-top: 1rem;
	cursor: pointer;
}

input[type="submit"]:hover{
	background: #2c3e50;
}


@media only screen and (max-width: 770px){
	.container{
		flex-direction: column;
	}
	body{
		overflow-x: hidden;
	}
}
    	
    </style>
	<script>
    'use strict';
                
    document.addEventListener( "DOMContentLoaded", ev => {
                        
      // code du test
                        
                        
                        // fin code du test
      
    }, false );
    
    window.addEventListener( "load", ev => {
        
        // code du test
        
        const
                elemForme = document.querySelector( "#forme" ),
                elemQte = document.querySelector( "#qte" ),
                elemAmount = document.querySelector( "#amount" ),
                changeHandler = ev => {
                        elemAmount.value = ( parseFloat( elemForme.value ) * parseFloat( elemQte.value ) ).toFixed( 2 );
                };
        
        elemForme.addEventListener( "change", changeHandler, false );
        elemQte.addEventListener( "change", changeHandler, false );
        
        elemQte.dispatchEvent( new Event( "change" ) );
        
        // fin code du test
        
}, false );
  </script>
	
</head>
<body>
<% 
String client=(String)session.getAttribute("sessname"); 

%>



<body>
  
                                    <!-- Top Nav -->
                                    <div class="col-12 bg-dark py-2 d-md-block d-none">
                                        <div class="row">
                                            <div class="col-auto me-auto">
                                                <ul class="top-nav">
                                                    <li>
                                                        <a href="elqdmim@gmail.com"><i class="fa fa-envelope me-2"></i>mouad.elqdim@etu.uae.ac.ma</a>
                                                    </li>
                                                    <li>
                                                        <s:url namespace="/" action="indexHome" var="lien5"></s:url><i class="fa-solid fa-house"></i>
                                                        <s:a href="%{lien5}" class="fas fa-home ">&nbsp;Home</s:a>
                                                    </li>
                                                    <li>
                                                        <s:url namespace="/" action="produits" var="lien12"></s:url>
                                                        <s:a href="%{lien12}" class="fas fa-cube ">&nbsp;Produits</s:a>
                                                    </li>


                                                    <li>
                                                        <s:url namespace="/" action="review" var="lien3"></s:url>
                                                        <s:a href="%{lien3}" class="fas fa-user ">&nbsp;Review</s:a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-auto">
                                                <ul class="top-nav">

                                                    <li>
                                                        <s:url namespace="/" action="index" var="lien2"></s:url>
                                                        <s:a href="%{lien2}"><i class="fas fa-sign-in-alt me-2"></i>Logout</s:a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                         
    <header>           
					<div class="container">
		<div class="left">
                        <h1 class="text-center"> Ajouter la Commande </h1>
                  
                    
                        <form action="facture.action">
                        <s:iterator value="produit">
                         
                           code produit :
                              <input class="form-control" type="text" value="${produit.codePdt}" name="commande.codePdt"  />
                        
                           Client :
                           <input class="form-control" type="text" value="<%=client %>" name="commande.client"  /> 
                            
                          
                          
                              nom produit :
                             <input type="text" class="form-control" value="${produit.nomPdt}" name="commande.nomPdt" />
                        
                                
                              prix produit :
                            <input id="forme" class="form-control" value="${produit.prixPdt}" name="commande.prixPdt" />
                           
                              
                              Quantités :
                           <input type="number" id="qte" class="form-control" name="commande.qteCmd"/>
                          
                            
                              Date
  						
  						<%
						   Date date = new Date();						   
						%>									
						
						<input type="text" value="<%=date %>" class="form-control" name="commande.dateCmd"  />
                         numero Telephone  
						<input type="number" name="numT" placeholder=" numero Telephone">
					
                         
				<div id="zip">
					<label>
						ville
						<select name="ville">
							<option>Choose Ville..</option>
							<option>Tetouan</option>
							<option>Tanger</option>
							<option>Rabat</option>
							<option>Marrakech</option>
							<option>ouezzane</option>
						</select>
					</label>
						<label>
						 code promo 
						<input type="number" name="cdp" placeholder=" code promo">
						
					</label>
					
                            
                           
				</div>
                                <label for="datePicker">Date livraison : </label>
                            <input type="date" name="dateV" id="datePicker"><br>
                             Prix Totale :
                           <input type="number" class="form-control" id="amount" name="prixtotal"/>
                            <div class="right">
			<h3>PAIEMENT<h3>
			<form>
				
			Accepter la carte <br>
				<img src="images/card1.png" width="100">
				<img src="images/card2.png" width="50">
				<br><br>

				Credit card number
			<input type="text" name="" placeholder="Enter card number">
				
				
				<div id="zip">
					<label>
						date d'expiration
						<input type="text" name="" placeholder="12/23">
					</label>
						<label>
						CVV
						<input type="number" name="" placeholder="CVV">
					</label>
				</div>
                          
                                <button type="submit" class="btn btn-success">Confirmier</button>
                         
                            </s:iterator>
                        </form>
                    </div>
                </div>
            
    </header>     		


 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
	
</body> 