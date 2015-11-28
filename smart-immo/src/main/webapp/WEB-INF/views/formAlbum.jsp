|<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@include file="head.jsp"%>
<div class="container">
	<div class="generic-container">
		<div class="well lead">ALBUM FORM</div>
		<form method="POST" action="multipleSave" class="form-horizontal"
			enctype="multipart/form-data">


			<div class="row">

				<div class=" col-md-12">



					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br />


					</div>
					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br />
					</div>

					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br /> <br />
					</div>

					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br /> <br />
					</div>
					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br /> <br />
					</div>
					<div class="col-md-2">

						<input id="upload_file" type="file" name="file"> <br /> <br />
					</div>
				</div>
				<div class="form-group row center" style="display: none">
					<div class="col-md-4"></div>
					<div class="input-group  col-md-4">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input class="form-control" type="text"
						value="${msg}"	name="id">
					</div>
					<div class="col-md-4"></div>
				</div>




			</div>

			<div>
				<input type="submit" value="OK">
			</div>


		</form>

	</div>
</div>
<%@include file="bas.jsp"%>