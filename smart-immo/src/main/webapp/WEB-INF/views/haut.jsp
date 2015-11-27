<!DOCTYPE html>
<html lang="fr">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Smart-Immo BackOffice</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/monStyle.css" rel="stylesheet">
<link id="base-style-responsive"
	href="resources/css/style-responsive.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- end: CSS -->


<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->

<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->

<!-- start: Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- end: Favicon -->




</head>

<body>
	<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="<c:url value='/' />"><span>SMART-IMMO</span></a>

				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">

						<li class="dropdown hidden-phone" style="display: none"><a
							class="btn dropdown-toggle" data-toggle="dropdown"
							title="Nouveaux fournisseurs"
							href="<c:url value='/viewFournisseurs' />"> <i
								class="glyphicons-icon user_add white"></i> <span
								class="badge red"> 7 </span>
						</a></li>
						<!-- end: Notification: nouveau fournisseur-->

						<!--start: Notification bien en attente-->
						<li class="dropdown hidden-phone" style="display: none"><a
							class="btn dropdown-toggle" data-toggle="dropdown"
							href="<c:url value='/viewBiens' />" title="Biens en attentes">
								<i class="glyphicons-icon cart_in white"></i> <span
								class="badge red"> 5 </span>
						</a></li>

						<!-- end: Notifications nouveaux biens -->

						<!-- start: Notifications biens obseletes -->
						<li class="dropdown hidden-phone" style="display: none"><a
							class="btn dropdown-toggle" data-toggle="dropdown"
							href="<c:url value='/viewBiens' />" title="Biens obseletes">
								<i class="glyphicons-icon cart_out white"></i> <span
								class="badge red"> 5 </span>
						</a></li>

						<!-- end: Notiifcation biens obseletes -->

						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone" style="display: none"><a
							class="btn dropdown-toggle" data-toggle="dropdown"
							href="<c:url value='/viewClients' />" title="Newsletters"> <i
								class="glyphicons-icon message_plus white"></i> <span
								class="badge red"> 4 </span>
						</a></li>

						<!-- start: User Dropdown -->
						<li class="dropdown"><a class="btn dropdown-toggle"
							data-toggle="dropdown" href="#"> <i
								class="glyphicons-icon user white"></i><sec:authentication property="principal.username" /> <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title"><span>Account
										Settings</span></li>
								<li><a href="#"><i class="halflings-icon user"></i>
										Profile</a></li>
								<li><a href="logout"><i class=" halflings-icon off"></i>
										DECONNEXION</a></li>
							</ul></li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->

			</div>
		</div>
	</div>
	<!-- start: Header -->

	<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="<c:url value='/' />"><i
								class="icon-bar-chart"></i><span class="hidden-tablet">DASHBOARD</span></a></li>

						<li><a class="dropmenu"
							href="<c:url value='/viewFournisseurs' />"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">FOURNISSEUR</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/viewFournisseurs' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">PARICULIERS</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewAgences' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">AGENCE</span></a></li>
							</ul></li>

						<li><a class="dropmenu" href="<c:url value='/viewBiens' />"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">CONFIGURATION</span></a>
							<ul>
								<li><a class="submenu" href="<c:url value='/viewBiens' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">BIEN</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewCategories'/>"><i 
										class="icon-file-alt"></i><span class="hidden-tablet">CATEGORIE</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewDisponibilites' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">DISPONIBILITE</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewTypeOffres' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">TYPE
											OFFRE</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewSousCategories' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">SOUS-CATEGORIE</span></a></li>
								<li><a class="submenu" href="<c:url value='/viewAlbums' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">ALBUM</span></a></li>
							</ul></li>

						<li><a class="dropmenu" href="#"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">LOCALITE</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/viewRegions' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">REGION</span></a></li>
								<li><a class="submenu" href="<c:url value='/viewVilles' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">VILLE</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/viewCommunes' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">COMMUNE</span></a></li>

							</ul></li>

						<li><a href="<c:url value='/viewClients' />"><i
								class="icon-bar-chart"></i><span class="hidden-tablet">NEWSLETTERS</span></a></li>


						<li><a class="dropmenu" href="<c:url value='/viewBiens' />"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">UTILISTATEURS</span></a>
							<ul>
								<li><a class="submenu" href="<c:url value='/viewUsers' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">USERS</span></a></li>
								<li><a class="submenu" href="<c:url value='/viewAdmins' />"><i
										class="icon-file-alt"></i><span class="hidden-tablet">ROLES</span></a></li>

							</ul>
						</li>
						<li><a href="<c:url value='logout' />"><i
								class="halflings-icon off"></i><span class="hidden-tablet">DECONNEXION</span></a></li>

					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->