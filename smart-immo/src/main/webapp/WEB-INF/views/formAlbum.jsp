<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="head.jsp" %> 
<div class="container">
 <div class="generic-container">
    <div class="well lead">ALBUM FORM</div>
    <f:form method="POST" modelAttribute="formAlbum" class="form-horizontal" enctype = "multipart/form-data">
        <f:input type="hidden" path="idAlbum" id="idAlbum"/>
         
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="pathAlbum">Path Album</label>
                <div class="col-md-7">
                    <f:input name="files" type="file" path="pathAlbum" id="pathAlbum" class="form-control input-sm" multiple="true"/>
                    <div class="has-error">
                        <f:errors path="pathAlbum" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="titreBien">Du Bien</label>
                <div class="col-md-7">
                    <f:select path="bien" items="${listBien}"></f:select>
                    <div class="has-error">
                        <f:errors cssStyle="color:#F00" path="bien" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

 
        <div class="row">
            <div class="form-actions floatRight">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Modifier" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewAlbums' />">Cancel</a>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enregister" class="btn btn-primary btn-sm"/> or <a
 
href="<c:url value='/viewAlbums' />">Cancel</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </f:form>
    </div></div>
 <%@include file="bas.jsp" %>