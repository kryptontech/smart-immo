<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>

		<%@include file="haut.jsp" %>
			<!-- start: Content -->
			<div id="content" class="span12">
			
			
			  <ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Ajouter nouveau</a></li>
			  </ul>
			  <div class="row-fluid sortable box">	
					 <f:form method="POST" modelAttribute="formAgence" class="form-inline well" enctype="multipart/form-data">
						 <legend>Ajouter une nouvelle agence </legend>
							<br>
							<br> 
							<div class=" container-fluid">
								 <div class="span8">
								 	<div class="container">
										 <div class=" span10">
													<div class="form-group span4">
														<label class="span3 control-lable" for="nomFournisseur">Nom:</label>
														<div class="span7">
															<f:input type="text" path="nomFournisseur" id="nomFournisseur" class="form-control input-sm"/>
															<div class="has-error">
																<f:errors path="nomFournisseur" class="help-inline"/>
															</div>
														</div>
													</div>
										
													<div class="form-group span4">
														<label class="span3 control-lable" for="pseudoFournisseur">Pseudo:</label>
														<div class="span7">
															<f:input type="text" path="pseudoFournisseur" id="pseudoFournisseur" class="form-control input-sm"/>
															<div class="has-error">
																<f:errors path="pseudoFournisseur" class="help-inline"/>
															</div>
														</div>
													</div> 
										
										</div>
								    </div>
									<br>
								<br>
								<div class="container">
							  <div class=" span10">
								<div class="form-group span4">
									<label class="span3 control-lable" for="telMobileFournisseur">Téléphone Mobile:</label>
									<div class="span7">
										<f:input type="text" path="telMobileFournisseur" id="telMobileFournisseur" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="telMobileFournisseur" class="help-inline"/>
										</div>
									</div>
								</div>
								
								<div class="form-group span4">
									<label class="span3 control-lable" for="telFixeFournisseur">Téléphone Fixe:</label>
									<div class="span7">
										<f:input type="text" path="telFixeFournisseur" id="telFixeFournisseur" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="telFixeFournisseur" class="help-inline"/>
										</div>
									</div>
								</div>
								

							  </div>
							</div>
							 <br> <br>
							<div class="container">
							  <div class=" span10">
								<div class="form-group span4">
									<label class="span3 control-lable" for="adresseAgence">Adresse Agence:</label>
									<div class="span7">
										<f:input type="text" path="adresseAgence" id="adresseAgence" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="adresseAgence" class="help-inline"/>
										</div>
									</div>
								</div>
						
								<div class="form-group span4">
									<label class="span3 control-lable" for="siteWebAgence">SiteWeb Agence:</label>
									<div class="span7">
										<f:input type="text" path="siteWebAgence" id="siteWebAgence" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="siteWebAgence" class="help-inline"/>
										</div>
									</div>
								</div>
							</div>
							</div>
							
							<br><br>
							<div class="container">
							    <div class=" span10">
								<div class="form-group span4">
									<label class="span3 control-lable" for="emailFournisseur">Email:</label>
									<div class="span7">
										<f:input type="text" path="emailFournisseur" id="emailFournisseur" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="emailFournisseur" class="help-inline"/>
										</div>
									</div>
								</div>
								</div>
							</div>
							<br>
							<br>
							
							<div class="container">
							    <div class=" span10">
								<div class="form-group span4">
									<label class="span3 control-lable" for="mdpFournisseur">Mot de Passe:</label>
									<div class="span7">
										<f:input type="password" path="mdpFournisseur" id="mdpFournisseur" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="mdpFournisseur" class="help-inline"/>
										</div>
									</div>
								</div>
							   </div>
							</div>
							
							<br>
							<br>
							<div class="container">
							    <div class=" span10">
								<div class="form-group span4">
									<label class="span3 control-lable" for="statuFournisseur">Statut:</label>
									<div class="span7">
										<f:input type="text" path="statuFournisseur" id="statuFournisseur" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="statuFournisseur" class="help-inline"/>
										</div>
									</div>
								</div>
								</div>
							</div>
							
							<br><br> 
							<div class="container">
							  <div class=" span10">
								<div class="formgroup">
									<c:choose>
										<c:when test="${edit}">
											<button class="btn btn-primary" type="submit">
												Modifier 
												<i class="icon-white icon-ok-sign"></i> 
											</button>
											<input type="reset" value="Cancel" class="btn btn-danger btn-sm"/> 
										</c:when>
										<c:otherwise>
											<button class="btn btn-primary" type="submit">
												Enregistrer
												<i class="icon-white icon-ok-sign"></i> 
											</button>
											<input type="reset" value="Cancel" class="btn btn-danger btn-sm"/> 
										</c:otherwise>
									</c:choose>
								</div>
							 </div>
							</div>
							  </div>
							  
							  <div class="span4">
									
											<div class="form-group span12">
												
												<label class="container-fluid control-lable" for="logoAgence">Logo Agence:</label>
												<br>
												<br>
												<div class="container-fluid">
												    
												     <div class="span3 offset2 img-polaroid logobox">
													 
													 </div>
												</div>
												<br>
												<div class="container-fluid">
													<f:input type="file" path="logoAgence" id="logoAgence" class="form-control input-sm"/>
													<div class="has-error">
														<f:errors path="logoAgence" class="help-inline"/>
													</div>
												</div>
											</div>
							  </div>
							
							</div>

						</f:form>
			
			</div>
			</div>
        </div>
	<!-- start: JavaScript-->
<%@include file="bas.jsp" %>
