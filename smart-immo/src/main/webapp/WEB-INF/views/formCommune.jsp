
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
    <f:form method="POST" modelAttribute="formCommune" class="form-horizontal well">
						  <legend>commune</legend>
        <f:input type="hidden" path="idCommune" id="idCommune"/>
         <br>
		<br>
        <div class="container-fluid">
            <div class="form-group span12">
                <label class="span3 control-lable" for="libelleCommune">Nom de la Commune</label>
                <div class="span7">
                    <f:input type="text" path="libelleCommune" id="libelleCommune" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleCommune" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <br>
		<br>
        <div class="container-fluid">
            <div class="form-group span12">
                <label class="span3 control-lable" for="libelleVille">Dans la Ville de:</label>
                <div class="span7">
                    <f:select path="ville" items="${listVille}"></f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="ville" class="help-inline"></f:errors>
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
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a class="btn btn-danger" href="<c:url value='/viewCommunes' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a class="btn btn-danger" href="<c:url value='/viewCommunes' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div>
	</div>
	</div>
	</div>
	</div>
 <%@include file="bas.jsp" %>