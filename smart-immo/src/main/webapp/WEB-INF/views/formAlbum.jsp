<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>

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
						<f:form method="POST" modelAttribute="formAlbum" class="form-horizontal well" enctype = "multipart/form-data">
						<legend>Album du bien</legend>
						<f:input type="hidden" path="idAlbum" id="idAlbum"/>
						<br>
						<br>
										
					<div class="container-fluid">
						<div class="form-group span4">
							<label class="span3 control-lable" for="titreBien">Bien</label>
							<div class="span7">
								<f:select path="bien" items="${listBien}"></f:select>
								<div class="has-error">
									<f:errors cssStyle="color:#F00" path="bien" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>
					<br/>
						<br/>
					<div class="container-fluid">
						<legend>Ajouter des photos</legend>
						<br/>
						<br/>
						<div class="form-group span12">
							 <div class="row-fluid span4">
								 <div class="row-fluid">
									 <div class="span10 img-polaroid albumbox">
									   </div>
								 </div>
								  <br/>
								  <div class="row-fluid">
									<input type="file"/>
								 </div>
							 </div>	
							  <div class="row-fluid span4">
								<div class="row-fluid">
									 <div class="span10 img-polaroid albumbox">
									   </div>
								 </div>
								  <br/>
								  <div class="row-fluid">
									<input type="file"/>
								 </div>
							 </div>	
							  <div class="row-fluid span4">
								<div class="row-fluid">
									 <div class="span10 img-polaroid albumbox">
									   </div>
								 </div>
								  <br/>
								  <div class="row-fluid">
									<input type="file"/>
								 </div>
							 </div>	
						
						</div>
								
					</div>
					<br/>
					<br/>			 
					<div class="container-fluid groupbtn">
						<br/>
						<br/>
						<div class="form-group span5">
								<c:choose>
									<c:when test="${edit}">
										<input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewAlbums' />">Cancel</a>
									</c:when>
									<c:otherwise>
										<input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewAlbums' />">Cancel</a>
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