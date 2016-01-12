
		<%@include file="haut.jsp" %>
	<div class="span12" id="content">
		<ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Ajouter nouveau</a></li>
			  </ul>
				<div class="row-fluid sortable box">	
		<f:form method="POST" modelAttribute="formFournisseur" class="form-inline well">
			<legend>Fournisseur Particulier</legend>
			<f:input type="hidden" path="idFournisseur" id="idFournisseur" />
			<br>
			<br>
			<div class="container-fluid">
				<div class="form-group span4">
					<label class="span3 control-lable" for="nomFournisseur">Nom</label>
					<div class="span7">
						<f:input type="text" path="nomFournisseur" id="nomFournisseur"
							class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="nomFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
				
				<div class="form-group span4">
					<label class="span3 control-lable" for="pseudoFournisseur">Pseudo</label>
					<div class="span7">
						<f:input type="text" path="pseudoFournisseur"
							id="pseudoFournisseur" class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="pseudoFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>

			<div class="container-fluid">
				<div class="form-group span4">
					<label class="span3 control-lable" for="emailFournisseur">Email</label>
					<div class="span7">
						<f:input type="email" path="emailFournisseur"
							id="emailFournisseur" class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="emailFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
				
				<div class="form-group span4">
					<label class="span3 control-lable" for="mdpFournisseur">Mot de Passe</label>
					<div class="span7">
						<f:input type="password" path="mdpFournisseur" id="mdpFournisseur"
							class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="mdpFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div class="container-fluid">
				<div class="form-group span4">
					<label class="span3 control-lable" for="telFixeFournisseur">Téléphone Fixe</label>
					<div class="span7">
						<f:input type="number" path="telFixeFournisseur"
							id="telFixeFournisseur" class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="telFixeFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
				
				<div class="form-group span4">
					<label class="span3 control-lable" for="telMobileFournisseur">Téléphone Mobile</label>
					<div class="span7">
						<f:input type="number" path="telMobileFournisseur"
							id="telMobileFournisseur" class="form-control input-sm" />
						<div class="has-error">
							<f:errors path="telMobileFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div class="container-fluid">
				<div class="form-group span4">
					<label class="span3 control-lable" for="statuFournisseur">Statut</label>
					<div class="span7">
						<f:input type="text" path="statuFournisseur" id="statuFournisseur"
							class="form-control input-sm" />
						<div class="has-error">	
							<f:errors path="statuFournisseur" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div class="container-fluid groupbtn">
				<div class="form-group span12">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Modifier"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/viewFournisseurs' />">Cancel</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Enregister"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/viewFournisseurs' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</f:form>
	</div>
</div>
</div>
</div>
<%@include file="bas.jsp"%>