
		<%@include file="haut.jsp" %>
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
				<f:form method="POST" modelAttribute="formSousCategorie" class="form-horizontal well">
					 <legend>Sous Categorie bien</legend>
					 <f:input type="hidden" path="idSousCat" id="idSousCat"/>
							<br>
							<br>
							<div class="container-fluid">
								<div class="form-group span5">
									<label class="span4 control-lable" for="libelleSousCat"> Sous Categorie bien:</label>
									<div class="span7">
										<f:input type="text" path="libelleSousCat" id="libelleSousCategorie" class="form-control input-sm"/>
										<div class="has-error">
											<f:errors path="libelleSousCat" class="help-inline"/>
										</div>
									</div> 
								</div>
					        </div>
							<br>
							<br>
							<div class="container-fluid">
								<div class="form-group span5">
									<label class="span4 control-lable" for="libelleSousCat">Dans la Categorie de:</label>
									<div class="span7 ">
										<f:select path="categorie" items="${listCategorie}"></f:select>
										<div class="has-error">
											<f:errors cssStyle="color:#F00" path="categorie" class="help-inline"/>
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
											<input type="submit" value="Modifier" class="btn btn-primary btn-sm"/>  <a class="btn btn-danger" href="<c:url value='/viewSousCategories' />">Cancel</a>
										</c:when>
										<c:otherwise>
											<input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> <a  class="btn btn-danger" href="<c:url value='/viewSousCategories' />">Cancel</a>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
				</f:form>
  				</div>
			</div>
			</div>
			</div>
 <%@include file="bas.jsp" %>