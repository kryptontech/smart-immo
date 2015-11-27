<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>

<%@include file="haut.jsp" %>
<div class="content" class="span12">
 			  <ul class="breadcrumb">
				  <li>
					   <i class="icon-home"></i>
					   <a href="<c:url value='/' />">Accueil</a> 
					   <i class="icon-angle-right"></i>
				  </li>
				<li><a href="">Ajouter nouveau</a></li>
			  </ul>
			  <div class="row-fluid sortable box">
				<f:form method="POST" modelAttribute="formRegion" class="form-horizontal">
				 <legend>Region</legend>
				<f:input type="hidden" path="idRegion" id="idRegion"/>
         
					<div class="container-fluid">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="libelleRegion">Nom de la Region</label>
							<div class="col-md-7">
								<f:input type="text" path="libelleRegion" id="libelleRegion" class="form-control input-sm"/>
								<div class="has-error">
									<f:errors path="libelleRegion" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>

			 
					<div class="row">
						<div class="form-actions floatRight">
							<c:choose>
								<c:when test="${edit}">
									<input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/viewRegions' />">Cancel</a>
								</c:when>
								<c:otherwise>
									<input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/viewRegions' />">Cancel</a>
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