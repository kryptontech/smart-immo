<%@include file="haut.jsp"%>
<!-- start: Content -->
<div id="content" class="span10">


	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="<c:url value='/' />">Accueil</a>
			<i class="icon-angle-right"></i></li>
		<li><a href="">Bien</a></li>
	</ul>
	<div class="row-fluid sortable">
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2>
					<i class="halflings-icon white user"></i><span class="break"></span>Album
				</h2>
				<div class="box-icon">
					<a href="#" class="btn-minimize"><i
						class="halflings-icon white chevron-up"></i></a> <a href="" class=""
						data-toggle="modal" data-target="#myModal"><i
						class="halflings-icon white plus"></i></a>
				</div>
			</div>
			<div class="box-content">
				<table
					class="table table-striped table-bordered bootstrap-datatable datatable">
					<thead>
						<tr>
							<th>ID</th>
							<th>Titre</th>
							<th>Superficie</th>
							<th>Prix</th>
							<th>Statut</th>
							<th>Date</th>
							<th>Fournisseur</th>
							<th>Type Offre</th>
							<th>Commune</th>
							<th>Sous Catégorie</th>
							<th>disponibilité</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${listBien}" var="bien">
							<tr>

								<td>${bien.idBien}</td>
								<td>${bien.titreBien}</td>
								<td>${bien.superficieBien}</td>
								<td>${bien.prixBien}</td>
								<td>${bien.statutBien}</td>
								<td>${bien.datePubBien}</td>
								<td>${bien.fournisseur}</td>
								<td>${bien.typeoffre}</td>
								<td>${bien.ville}</td>
								<td>${bien.disponibilite}</td>
								<td>${bien.souscategorie}</td>
								<td class="center"><a class="btn btn-info"
									data-toggle="modal"
									href="<c:url value='/modifyBien-${bien.idBien}' />"> <i
										class="halflings-icon white edit"></i>
								</a> <a class="btn btn-danger" data-toggle="modal"
									href="<c:url value='/deleteBien-${bien.idBien}' />"> <i
										class="halflings-icon white trash"></i>
								</a> <a class="btn" data-toggle="modal"
									href="<c:url value='/saveAlbum-${bien.idBien}' />">
										<i class=" halflings-icon  white camera"></i>
								</a></td>

								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

		</div>
		<!--/span-->
		<div>
			<!-- <a href="addregion.html" class="btn btn-info">Ajouter nouveau</a>-->
			<!--Formulaire nouveau-->
			<a href="<c:url value='/saveBien' />" class="btn btn-info">
				Ajouter nouveau </a>

			<!-- Modal -->

			<!---------------------------end---------------->
		</div>
	</div>
</div>
</div>

<!-- start: JavaScript-->
<%@include file="bas.jsp"%>
