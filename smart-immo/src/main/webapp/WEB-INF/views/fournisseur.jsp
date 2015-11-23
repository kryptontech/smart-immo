<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>

		<%@include file="haut.jsp" %>
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			  <ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Fournisseur</a></li>
			  </ul>
			  <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>Fournisseur</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="" class="" data-toggle="modal" data-target="#myModal"><i class="halflings-icon white plus"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>ID</th>
								  <th>Pseudo</th>
								  <th>Nom</th>
								 
								  <th>Email</th>
								  <th>Mot de Passe</th>
								  <th>Statut</th>
								  <th>Telephone Fixe</th>
								  <th>Telephone Mobile</th>
								  <th>Actions</th>
								

							  </tr>
						  </thead>   
						  <tbody>
							
						<c:forEach items="${listFournisseur}" var="fournisseur">
     					  <tr>
     					  <td>${fournisseur.idFournisseur}</td>
     					  <td>${fournisseur.pseudoFournisseur}</td>
       						 <td>${fournisseur.nomFournisseur}</td>
       						
       						 <td>${fournisseur.emailFournisseur}</td>
       						 <td>${fournisseur.mdpFournisseur}</td>
       						 <td>${fournisseur.statuFournisseur}</td>
       						 <td>${fournisseur.telFixeFournisseur}</td>
       						 <td>${fournisseur.telMobileFournisseur}</td>
        					<td class="center">
         						<a class="btn btn-info" data-toggle="modal" href="<c:url value='/modifyFournisseur-${fournisseur.idFournisseur}' />">
         							 <i class="halflings-icon white edit"></i>                                            
         						</a>
         						<a class="btn btn-danger" data-toggle="modal" href="<c:url value='/deleteFournisseur-${fournisseur.idFournisseur}' />">
          						<i class="halflings-icon white trash"></i> </a>
          						
        					</td>
       					</tr>
       					</c:forEach>
						  </tbody>
					  </table> 

					</div>
					
				</div><!--/span-->
			<div>
						 <!-- <a href="addfournisseur.html" class="btn btn-info">Ajouter nouveau</a>-->
						 <!--Formulaire nouveau-->
				<a href="<c:url value='/saveFournisseur' />" class="btn btn-info">
					Ajouter nouveau
				</a>

				<!-- Modal -->
				
			 <!---------------------------end---------------->
				 </div>
			 </div>
			</div>
        </div>
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2013 <a href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/" alt="Bootstrap_Metro_Dashboard">JANUX Responsive Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->
<%@include file="bas.jsp" %>
