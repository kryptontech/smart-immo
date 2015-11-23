<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">NEWSLETTER FORM</div>
    <f:form method="POST" modelAttribute="formClient" class="form-horizontal">
        <f:input type="hidden" path="idClient" id="idClient"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="nomClient">Nom</label>
                <div class="col-md-7">
                    <f:input type="text" path="nomClient" id="nomClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="nomClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
       						
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="prenomClient">prenom(s)</label>
                <div class="col-md-7">
                    <f:input type="text" path="prenomClient" id="prenomClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="prenomClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="mailClient">Email</label>
                <div class="col-md-7">
                    <f:input type="text" path="mailClient" id="mailClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="mailClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="telClient">Téléphone</label>
                <div class="col-md-7">
                    <f:input type="text" path="telClient" id="telClient" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="telClient" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewClients' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewClients' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>