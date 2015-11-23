<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">SOUSCATEGORIE FORM</div>
    <f:form method="POST" modelAttribute="formSousCategorie" class="form-horizontal">
        <f:input type="hidden" path="idSousCat" id="idSousCat"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleSousCat"> SousCategorie</label>
                <div class="col-md-7">
                    <f:input type="text" path="libelleSousCat" id="libelleSousCategorie" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="libelleSousCat" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="libelleSousCat">Dans la Categorie de:</label>
                <div class="col-md-7">
                    <f:select path="categorie" items="${listCategorie}"></f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="categorie" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewSousCategories' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewSousCategories' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>