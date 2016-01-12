<%@include file="haut.jsp"%>
<div class="container-fluid-full">
 <!-- end: Main Menu -->
 <div id="content" class="span12">


  <ul class="breadcrumb">
   <li><i class="icon-home"></i> <a href="<c:url value='/' />">Accueil</a>
    <i class="icon-angle-right"></i></li>
   <li><a href="">Ajouter nouveau</a></li>
  </ul>
  <div class="row-fluid sortable box">
   <f:form method="POST" modelAttribute="formCategorie" class="well form-horizontal">
    <legend>Ajouter une nouvelle Categorie</legend>
	<f:input type="hidden" path="idCategorie" id="idCategorie" />
 
      <div class="container-fluid">
        <div class="form-group span4">
         
         <label class="span7 control-lable" for="libelleCategorie">Nom
          de la Categorie:</label>
         <div class="span5">
          <f:input type="text" path="libelleCategorie"
           id="libelleCategorie" class="form-control input-sm" />
          <div class="has-error">
           <f:errors path="libelleCategorie" class="help-inline" />
          </div>
         </div>
        </div>
      </div>
      <br />
      <div class="container">
       <div class=" span12 groupbtn">
        <div class="form-group span8">
         <c:choose>
          <c:when test="${edit}">
           <input type="submit" value="Modifier"
            class="btn btn-primary btn-sm" />
           <a class="btn btn-danger btn-sm"
            href="<c:url value='/viewCategories' />">Cancel</a>
          </c:when>
          <c:otherwise>
           <input type="submit" value="Enregister"
            class="btn btn-primary btn-sm" />
           <a class="btn btn-danger btn-sm"
            href="<c:url value='/viewCategories' />">Cancel</a>
          </c:otherwise>
         </c:choose>
        </div>
       </div>
      </div>
   </f:form>
  </div>
 </div>
</div>
</div>
<%@include file="bas.jsp" %>