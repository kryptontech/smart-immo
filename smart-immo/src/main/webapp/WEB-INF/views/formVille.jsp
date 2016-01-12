<%@include file="haut.jsp" %>
<div id="container" class="span12">
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
    <f:form method="POST" modelAttribute="v" class="form-horizontal well">
         <legend>Ville</legend>
		<f:input type="hidden" path="idVille" id="idVille"/>
         <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="libelleVille">Nom de la Ville:</label>
                <div class="span7">
                    <f:input type="text" path="libelleVille" id="libelleVille" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleVille" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="libelleVille">Dans la Region de:</label>
                <div class="span7">
                    <f:select path="region" items="${listRegion}">
      					 </f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="region" class="help-inline"></f:errors>
                    </div>
                </div>
            </div>
        </div>
		<br/>
		<br/>
 
        <div class="container-fluid groupbtn">
            <div class="form-group span12">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewVilles' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> <a class="btn btn-danger"href="<c:url value='/viewVilles' />">Cancel</a>
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