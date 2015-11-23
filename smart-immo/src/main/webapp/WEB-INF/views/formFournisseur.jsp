<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="head.jsp" %> 
 <div class="generic-container">
 <div class="container">
    <div class="well lead">FOURNISSEUR FORM</div>
    <f:form method="POST" modelAttribute="formFournisseur" class="form-horizontal">
        <f:input type="hidden" path="idFournisseur" id="idFournisseur"/>
         
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="pseudoFournisseur">Pseudo</label>
                <div class="col-md-7">
                    <f:input type="text" path="pseudoFournisseur" id="pseudoFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="pseudoFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
         
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="nomFournisseur">Nom</label>
                <div class="col-md-7">
                    <f:input type="text" path="nomFournisseur" id="nomFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nomFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
       						
        
        
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="emailFournisseur">Email</label>
                <div class="col-md-7">
                    <f:input type="text" path="emailFournisseur" id="emailFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="emailFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="mdpFournisseur">Mot de Passe</label>
                <div class="col-md-7">
                    <f:input type="password" path="mdpFournisseur" id="mdpFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mdpFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="telFixeFournisseur">Téléphone Fixe</label>
                <div class="col-md-7">
                    <f:input type="text" path="telFixeFournisseur" id="telFixeFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="telFixeFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="telMobileFournisseur">Téléphone Mobile</label>
                <div class="col-md-7">
                    <f:input type="text" path="telMobileFournisseur" id="telMobileFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="telMobileFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
 		<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="statuFournisseur">Statut</label>
                <div class="col-md-7">
                    <f:input type="text" path="statuFournisseur" id="statuFournisseur" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="statuFournisseur" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewFournisseurs' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewFournisseurs' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>