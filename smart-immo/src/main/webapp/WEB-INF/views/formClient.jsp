
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
     <f:form method="POST" modelAttribute="formClient" class="form-horizontal well">
	  <legend>Nouveau Client</legend>
        <f:input type="hidden" path="idClient" id="idClient"/>
         <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="nomClient">Nom:</label>
                <div class="span7">
                    <f:input type="text" path="nomClient" id="nomClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nomClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
       	<br>					
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="prenomClient">Prenom(s):</label>
                <div class="span7">
                    <f:input type="text" path="prenomClient" id="prenomClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="prenomClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="mailClient">Email:</label>
                <div class="span7">
                    <f:input type="text" path="mailClient" id="mailClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mailClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <br>
		<br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span3 control-lable" for="telClient">Contact:</label>
                <div class="span7">
                    <f:input type="text" path="telClient" id="telClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="telClient" class="help-inline"/>
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
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> <a class="btn btn-danger" href="<c:url value='/viewClients' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/>  <a class="btn btn-danger" href="<c:url value='/viewClients' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div>
	</div>
	</div>
	</div>u
 <%@include file="bas.jsp" %>