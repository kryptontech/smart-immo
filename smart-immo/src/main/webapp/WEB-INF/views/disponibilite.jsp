<%@include file="haut.jsp" %>
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			  <ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Disponibilite</a></li>
			  </ul>
			  <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>Disponibilite</h2>
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
								  <th>Disponibilite</th>
								  <th>Actions</th>

							  </tr>
						  </thead>   
						  <tbody>
							
						<c:forEach items="${listDisponibilite}" var="disponibilite">
     					  <tr>
     					  	<td>${disponibilite.idDisponibilite}</td>
       						 <td>${disponibilite.libelleDisponibilite}</td>
        					<td class="center">
         						<a class="btn btn-info" data-toggle="modal" href="<c:url value='/modifyDisponibilite-${disponibilite.idDisponibilite}' />">
         							 <i class="halflings-icon white edit"></i>                                            
         						</a>
         						<a class="btn btn-danger" data-toggle="modal" href="<c:url value='/deleteDisponibilite-${disponibilite.idDisponibilite}' />">
          						<i class="halflings-icon white trash"></i> </a>
          						
        					</td>
       					</tr>
       					</c:forEach>
						  </tbody>
					  </table> 

					</div>
					
				</div><!--/span-->
			<div>
						 <!-- <a href="adddisponibilite.html" class="btn btn-info">Ajouter nouveau</a>-->
						 <!--Formulaire nouveau-->
				<a href="<c:url value='/saveDisponibilite' />" class="btn btn-info">
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
