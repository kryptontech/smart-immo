<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">CATEGORIE FORM</div>
    <f:form method="POST" modelAttribute="formCategorie" class="form-horizontal">
        <f:input type="hidden" path="idCategorie" id="idCategorie"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleCategorie">Nom de la Categorie</label>
                <div class="col-md-7">
                    <f:input type="text" path="libelleCategorie" id="libelleCategorie" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleCategorie" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewCategories' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewCategories' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>