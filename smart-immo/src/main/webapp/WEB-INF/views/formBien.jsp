<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">BIEN FORM</div>
    <f:form method="POST" modelAttribute="formBien" class="form-horizontal">
        <f:input type="hidden" path="idBien" id="idBien"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="titreBien">Titre du Bien</label>
                <div class="col-md-7">
                    <f:input type="text" path="titreBien" id="titreBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="titreBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="superficieBien">Superficie du Bien</label>
                <div class="col-md-7">
                    <f:input type="text" path="superficieBien" id="superficieBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="superficieBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="prixBien">Prix du Bien</label>
                <div class="col-md-7">
                    <f:input type="text" path="prixBien" id="prixBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="prixBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="quartierBien">Quartier</label>
                <div class="col-md-7">
                    <f:input type="text" path="quartierBien" id="quartierBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="quartierBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="descriptionBien">Description</label>
                <div class="col-md-7">
                    <f:input type="text" path="descriptionBien" id="descriptionBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="descriptionBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="nbPieceBien">Nombre de pièces</label>
                <div class="col-md-7">
                    <f:input type="text" path="nbPieceBien" id="nbPieceBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nbPieceBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleBien">Statut</label>
                <div class="col-md-7">
                    <select name="commune" class="form-control input-sm">
                    <c:forEach items="" var="bien">
       					<option value="">Disponible</option>
       					<option value="">Indisponible</option>
   					</c:forEach>
   					</select>
                    <div class="has-error">
                        <f:errors path="commune.libelleCommune" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="datePubBien">Date</label>
                <div class="col-md-7">
                    <f:input type="text" path="datePubBien" id="datePubBien" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="datePubBien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="nomFournisseur">Du fournisseur:</label>
                <div class="col-md-7">
                    <f:select path="fournisseur" items="${listFournisseur}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="fournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleTypeOffre">Type d'offre:</label>
                <div class="col-md-7">
                    <f:select path="typeoffre" items="${listTypeOffre}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="typeoffre" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="commune">Dans la Commune de:</label>
                <div class="col-md-7">
                     <f:select path="commune" items="${listCommune}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="commune" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleSousCategorie">Sous-Categorie:</label>
                <div class="col-md-7">
                    <f:select path="souscategorie" items="${listSousCategorie}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="souscategorie" class="help-inline"/>
                    </div>
                    
                </div>
            </div>
        </div>

 		   <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleDisponibilite">Disponibilité:</label>
                <div class="col-md-7">
                     <f:select path="disponibilite" items="${listDisponibilite}">
   					</f:select>
                    <div class="has-error">
                        <f:errors path="disponibilite" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewBiens' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewBiens' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>