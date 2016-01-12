<%@include file="haut.jsp" %>
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			  <ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Catégorie</a></li>
			  </ul>
			  <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>Catégorie</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="" class="" data-toggle="modal" data-target="#myModal"><i class="halflings-icon white plus"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Categorie</th>
								  <th>Actions</th>

							  </tr>
						  </thead>   
						  <tbody>
							
						<c:forEach items="${listCategorie}" var="categorie">
     					  <tr>
       						 <td>${categorie.libelleCategorie}</td>
        					<td class="center">
         						<a class="btn btn-info" data-toggle="modal" href="<c:url value='/modifyCategorie-${categorie.idCategorie}' />">
         							 <i class="halflings-icon white edit"></i>                                            
         						</a>
         						<a class="btn btn-danger" data-toggle="modal" href="<c:url value='/deleteCategorie-${categorie.idCategorie}' />">
          						<i class="halflings-icon white trash"></i> </a>
          						
        					</td>
       					</tr>
       					</c:forEach>
						  </tbody>
					  </table> 

					</div>
					
				</div><!--/span-->
			<div>
						 <!-- <a href="addcategorie.html" class="btn btn-info">Ajouter nouveau</a>-->
						 <!--Formulaire nouveau-->
				<a href="<c:url value='/saveCategorie' />" class="btn btn-info">
					Ajouter nouveau
				</a>

				<!-- Modal -->
				
			 <!---------------------------end---------------->
				 </div>
			 </div>
			</div>
        </div>	
	<!-- start: JavaScript-->
<%@include file="bas.jsp" %>
