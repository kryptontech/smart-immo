
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
				<f:form method="POST" modelAttribute="formRegion" class="form-horizontal well">
				 <legend>Region</legend>
				<f:input type="hidden" path="idRegion" id="idRegion"/>
					<br/>
					<br/>
					<div class="container-fluid">
						<div class="form-group span4">
							<label class="span5 control-lable" for="libelleRegion">Nom de la Region:</label>
							<div class="span7">
								<f:input type="text" path="libelleRegion" id="libelleRegion" class="form-control input-sm"/>
								<div class="has-error">
									<f:errors path="libelleRegion" class="help-inline"/>
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
									<input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewRegions' />">Cancel</a>
								</c:when>
								<c:otherwise>
									<input type="submit" value="Enregister" class="btn btn-primary btn-sm"/>  <a class="btn btn-danger" href="<c:url value='/viewRegions' />">Cancel</a>
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