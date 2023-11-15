<!------ Include the above in your HEAD tag ---------->
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="j" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="css/pdf.css" />
    <script src="js/pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

</head>

<body>
    <% 

String client=request.getParameter("commande.client"); 
String codeCmd=request.getParameter("commande.codeCmd"); 
String codePdt=request.getParameter("commande.codePdt"); 
String nomPdt=request.getParameter("commande.nomPdt"); 
String prixPdt=request.getParameter("commande.prixPdt"); 
String prixtt=request.getParameter("prixtotal"); 
String dateCmd=request.getParameter("commande.dateCmd");
String qteCmd=request.getParameter("commande.qteCmd"); 
String cdp=request.getParameter("cdp");
String ville=request.getParameter("ville");
String numT=request.getParameter("numT");
String dateV =request.getParameter("dateV");
%>
        <div class="container d-flex justify-content-center mt-50 mb-50">
            <div class="row">

                <div class="col-md-12">
                    <div class="card" id="invoice">
                        <div class="card-header bg-transparent header-elements-inline">
                            <h6 class="card-title text-primary">Gestion de Vente</h6>
                                      <p class="address"> 777 mehanech, <br> Faculte des sciences 2351, <br>Tetouan <br> TXN: 0587558622</p>
                                       
                        </div>
                         <div class="card-header bg-transparent header-elements-inline">
                            <h4 class="invoice-color mb-2 mt-md-2">Client</h4>
                                            <h2>
                                                <%=client %>
                                            </h2>
                                            <ul class="list list-unstyled mb-0">
                                                <li>Ville: <span class="font-weight-semibold"><%=ville %></span></li>
                                                <li>numero telephone: <span class="font-weight-semibold"><%=numT %></span></li>
                                                <li>Date de commande: <span class="font-weight-semibold"><%=dateCmd %></span></li>
                                                <li>Mode Paiement: <span class="font-weight-semibold">VISA, ****125</span></li>
                                            </ul>
                                       
                        </div>
                        <div class="card-body">
                            
                           
                        </div>
                        <div class="table-responsive">
                            <table class="table table-lg">
                                <thead>
                                    <tr>
                                    	<th>Numero de commande</th>
                                        <th>Article</th>
                                        <th>Prix</th>
                                        <th>Quantites</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    	 <td>
                                            <%=codePdt %>
                                        </td>
                                        <td>
                                            <%=nomPdt %>
                                        </td>
                                        <td class="text-center">
                                            <%=prixPdt %>
                                        </td>
                                        <td class="text-center">
                                            <%=qteCmd %>
                                        </td>
                                        <td class="text-center">
                                            <%=prixtt %>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="card-body">
                            <div class="d-md-flex flex-md-wrap">
                                <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                                  
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                               
                                                <tr>
                                                    <th class="text-left">Date de livraison:</th>
                                                    <td class="text-right text-primary">
                                                        <h5 class="font-weight-semibold"><%=dateV %></h5>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                          
                        </div>
                    </div>
                      <s:url namespace="/" action="indexHome" var="lien8"></s:url>
                            &nbsp;&nbsp;&nbsp;
                            <s:a href="%{lien8}" class="btn btn-success">Return Home</s:a>
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                           
                                <button class="btn btn-primary" id="download"> download pdf</button>
                            
                </div>
            </div>
</body>

</html>