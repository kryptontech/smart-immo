<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">AGENCE FORM</div>
    <f:form method="POST" modelAttribute="formAgence" class="form-horizontal">
        
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="siteWebAgence">SiteWeb Agence</label>
                <div class="col-md-7">
                    <f:input type="text" path="siteWebAgence" id="siteWebAgence" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="siteWebAgence" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="logoAgence">Logo Agence</label>
                <div class="col-md-7">
                    <f:input type="file" path="logoAgence" id="logoAgence" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="logoAgence" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adresseAgence">Adresse Agence</label>
                <div class="col-md-7">
                    <f:input type="text" path="adresseAgence" id="adresseAgence" class="form-control input-sm"/>
                    <div class="has-error">
                        <f:errors path="adresseAgence" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>


 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewAgences' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewAgences' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>