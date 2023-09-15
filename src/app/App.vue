<template>
	<div id="cabecera" class="sticky-top">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">iTalento</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="#">Home</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="#">Link</a>
						</li>
						
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">
								Dropdown
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul>
						</li>
						
					</ul>

					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				
				</div>
			</div>
		</nav>
	</div>

	<div id="Contenido" class="tab-content">
	</div>

	<div id="footer" class="navbar fixed-bottom navbar bg-body-secondary p-0">
		<div id="f-container" class="container-fluid">
			<div id="f-about" class=" d-flex nav-item justify-content-center nav-item w-75 bg-body-tertiary">
				<a class="nav-link" href="#">About Us</a>
			</div>
			<div id="f-redes" class="d-flex nav-item justify-content-end w-25 bg-warning ">
				<a class="rounded nav-link d-inline-block mx-1" href="#">
					<i class="bi bi-facebook"></i>
				</a>
				<a class="rounded nav-link d-inline-block mx-1" href="#">
					<i class="bi bi-twitter"></i>
				</a>
				<a class="rounded nav-link d-inline-block mx-1" href="#">
					<i class="bi bi-instagram"></i>
				</a>
				<a class="rounded nav-link d-inline-block mx-1" href="https://github.com/Kanto-Software-Solutions">
					<i class="bi bi-github"></i>
				</a>
			</div>
		</div>

</div></template>
