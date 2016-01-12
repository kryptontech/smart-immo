
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
           <f:form method="POST" modelAttribute="formUser" class="form-inline well">
          <legend>Utilisateur</legend>
		<f:input type="hidden" path="idUser" id="idUser"/>
         <br>
		 <br>
         <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="nomUser">Nom:</label>
                <div class="span7">
                    <f:input type="text" path="nomUser" id="nomUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nomUser" class="help-inline"/>
                    </div>
                </div>
            </div>
			 <div class="form-group span4">
                <label class="span3 control-lable" for="pseudoUser">Pseudo:</label>
                <div class="span7">
                    <f:input type="text" path="pseudoUser" id="pseudoUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="pseudoUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <br>
		 <br>
         <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="mailUser">Email:</label>
                <div class="span7">
                    <f:input type="text" path="mailUser" id="mailUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mailUser" class="help-inline"/>
                    </div>
                </div>
            </div>
			 <div class="form-group span4">
                <label class="span3 control-lable" for="mdpUser">Mot de Passe:</label>
                <div class="span7">
                    <f:input type="password" path="mdpUser" id="mdpUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mdpUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
       <br>
		 <br>
         <div class="container-fluid">
		  <div class="form-group span4">
                <label class="span3 control-lable" for="typeUser">Rôle:</label>
                <div class="span7">
                    <f:select path="admin" items="${listAdmin}"></f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="admin" class="help-inline"></f:errors>
                    </div>
                </div>
            </div>
            <div class="form-group span4">
                <label class="span3 control-lable" for="statuUser">Statut:</label>
                <div class="span7">
                    <f:input type="text" path="statuUser" id="statuUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="statuUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <br>
		 <br>
         <div class="container-fluid  groupbtn">
            <div class="form-group span12">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewUsers' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewUsers' />">Cancel</a>
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