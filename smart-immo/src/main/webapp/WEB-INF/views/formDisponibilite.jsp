<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %>  
<div class="container">
 <div class="generic-container">
    <div class="well lead">DISPONIBILITE FORM</div>
    <f:form method="POST" modelAttribute="formDisponibilite" class="form-horizontal">
        <f:input type="hidden" path="idDisponibilite" id="idDisponibilite"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleDisponibilite">Disponibilité</label>
                <div class="col-md-7">
                    <f:input type="text" path="libelleDisponibilite" id="libelleDisponibilite" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleDisponibilite" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewDisponibilites' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewDisponibilites' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>