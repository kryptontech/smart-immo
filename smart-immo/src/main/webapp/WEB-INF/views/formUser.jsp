<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">USER FORM</div>
    <f:form method="POST" modelAttribute="formUser" class="form-horizontal">
        <f:input type="hidden" path="idUser" id="idUser"/>
         
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="pseudoUser">Pseudo</label>
                <div class="col-md-7">
                    <f:input type="text" path="pseudoUser" id="pseudoUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="pseudoUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
         
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="nomUser">Nom</label>
                <div class="col-md-7">
                    <f:input type="text" path="nomUser" id="nomUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nomUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
       						
        
        
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="mailUser">Email</label>
                <div class="col-md-7">
                    <f:input type="text" path="mailUser" id="mailUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mailUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="mdpUser">Mot de Passe</label>
                <div class="col-md-7">
                    <f:input type="password" path="mdpUser" id="mdpUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mdpUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="statuUser">Statut</label>
                <div class="col-md-7">
                    <f:input type="text" path="statuUser" id="statuUser" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="statuUser" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
 		 <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="typeUser">Rôle:</label>
                <div class="col-md-7">
                    <f:select path="admin" items="${listAdmin}"></f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="admin" class="help-inline"></f:errors>
                    </div>
                </div>
            </div>
        </div>
 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewUsers' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewUsers' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div> </div>
 <%@include file="bas.jsp" %>