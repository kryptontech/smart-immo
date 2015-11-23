<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">TYPE d'OFFRE FORM</div>
    <f:form method="POST" modelAttribute="formTypeOffre" class="form-horizontal">
        <f:input type="hidden" path="idTypeOffre" id="idTypeOffre"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleTypeOffre">TypeOffre</label>
                <div class="col-md-7">
                    <f:input type="text" path="libelleTypeOffre" id="libelleTypeOffre" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleTypeOffre" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewTypeOffres' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewTypeOffres' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>