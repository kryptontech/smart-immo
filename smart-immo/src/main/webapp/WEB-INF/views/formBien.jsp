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
    <f:form method="POST" modelAttribute="formBien" class="form-inline well">
		 <legend>Bien</legend>
	  <f:input type="hidden" path="idBien" id="idBien"/>
         <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="titreBien">Titre du Bien:</label>
                <div class="span7">
                    <f:input type="text" path="titreBien" id="titreBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="titreBien" class="help-inline"/>
                    </div>
                </div>
            </div>
			<div class="form-group span4">
                <label class="span5 control-lable" for="superficieBien">Superficie du Bien (m2):</label>
                <div class="span7">
                    <f:input type="number" path="superficieBien" id="superficieBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="superficieBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
         <br>
		 <br>
         <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="prixBien">Prix du Bien:</label>
                <div class="span7">
                    <f:input type="number" path="prixBien" id="prixBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="prixBien" class="help-inline"/>
                    </div>
                </div>
            </div>
			
			 <div class="form-group span4">
                <label class="span5 control-lable" for="quartierBien">Quartier:</label>
                <div class="span7">
                    <f:input type="text" path="quartierBien" id="quartierBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="quartierBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
     <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="descriptionBien">Description:</label>
                <div class="span7">
                    <f:input type="text" path="descriptionBien" id="descriptionBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="descriptionBien" class="help-inline"/>
                    </div>
                </div>
            </div>
			  <div class="form-group span4">
                <label class="span5 control-lable" for="nbPieceBien">Nombre de pièces:</label>
                <div class="span7">
                    <f:input type="number" path="nbPieceBien" id="nbPieceBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nbPieceBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div> 
         <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="statutBien">Statut:</label>
                	<div class="span7">
						<f:input type="text" path="statutBien" id="statutBien" class="form-control input-sm" />
						<div class="has-error">	
							<f:errors path="statutBien" class="help-inline" />
						</div>
					</div>
            </div>
			  <div class="form-group span4">
                <label class="span5 control-lable" for="nomFournisseur">Du fournisseur:</label>
                <div class="span7">
                    <f:select path="fournisseur" items="${listFournisseur}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="fournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 <br>
		 <br>
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="libelleTypeOffre">Type d'offre:</label>
                <div class="span7">
                    <f:select path="typeoffre" items="${listTypeOffre}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="typeoffre" class="help-inline"/>
                    </div>
                </div>
            </div>
			
			 <div class="form-group span4">
                <label class="span5 control-lable" for="ville">Dans la Ville de:</label>
                <div class="span7">
                     <f:select path="ville" items="${listVille}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="ville" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 <br>
		 <br>
        
        <div class="container-fluid">
            <div class="form-group span4">
                <label class="span5 control-lable" for="libelleSousCategorie">Sous-Categorie:</label>
                <div class="span7">
                    <f:select path="souscategorie" items="${listSousCategorie}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="souscategorie" class="help-inline"/>
                    </div>
                    
                </div>
            </div>
			 <div class="form-group span4">
                <label class="span5 control-lable" for="libelleDisponibilite">Disponibilité:</label>
                <div class="span7">
                     <f:select path="disponibilite" items="${listDisponibilite}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="disponibilite" class="help-inline"/>
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
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/>  <a class="btn btn-danger" href="<c:url value='/viewBiens' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/>  <a class=" btn btn-danger" href="<c:url value='/viewBiens' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>