<template>
	<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-custom-center" style="width: 100%; align-items: center;" >
		<div class="container-fluid " >
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" >
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Categorías
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">Diseño gráfico</a></li>
							<li><a class="dropdown-item" href="#">Marketing digital</a></li>
							<li><a class="dropdown-item" href="#">Escritura y traducción</a></li>
							<li><a class="dropdown-item" href="#">Vídeo y animación</a></li>
							<li><a class="dropdown-item" href="#">Música y audio</a></li>
							<li><a class="dropdown-item" href="#">Programación y tecnología</a></li>

						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Cómo funciona</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Encuentra freelancers</a>
					</li>
					<li>
						<!--<a class="navbar-brand" href="#">
						<img src="../assets/img/negro.jpg" alt="" width="70" height="37" class="d-inline-block align-text-top">
						</a>-->
						<a class="nav-link" href="#"><strong><large>iTALENTO</large></strong></a>
					</li>
					<li class="nav-item">
  						<button class="nav-link btn btn-link btn-login" onclick="window.location.href='/login'">Login</button>
					</li>
					<li class="nav-item">
  						<button class="nav-link btn btn-link btn-signIn" onclick="window.location.href='/registro'">Sign in</button>
					</li>
					<li class="nav-item">
  						<button class="nav-link btn btn-link btn-muestra" onclick="window.location.href='/registro'">Muestra tu talento</button>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</template>
<!--<script>
	export default {
		name: 'NavComp',
		methods: {
			checkActive() {
				console.log(this.$route.path)
			},
		},
		created() {
			this.checkActive()
		},
		computed: {
			activePath() {
				if (this.$route.path === '/') {
					return {
						home: true,
						about: false,
						posts: false,
						terminos: false,

					}
				} else if (this.$route.path === '/about') {
					return {
						home: false,
						about: true,
						posts: false,
						terminos: false,

					}
				} else if (this.$route.path === '/posts') {
					return {
						home: false,
						about: false,
						posts: true,
						terminos: false,

					}
				} else if (this.$route.path === '/terminos') { 
					return {
						home: false,
						about: false,
						posts: false,
						terminos: true,
					}
				} else {
					return {
						home: false,
						about: false,
						posts: false,
						terminos: false,

					}
				}
			},
		},
	}
</script>--->


<style scoped>
	/*.material-icons-round {
		color: rgb(248, 244, 244);
		font-size: 1.4em;
		background-color: rgba(218, 218, 218, 0.158);
		padding: 0.3em;
		border-radius: 50%;
		margin: 0.1em;
	}
	.active .material-icons-round {
		color: white;
		background-color: rgba(133, 128, 128, 0.158);
		border: 1px solid rgba(248, 244, 244, 0.342);
	}*/
	.navbar-custom {
		background-color: #EBEBEB; /* Cambia este valor al color deseado */
	}
	.nav-link.btn-link:hover {
	background-color: #87ceeb; /* Cambia este valor al color de sombreado deseado */
	}
	.navbar-nav {
		display: flex;
		justify-content: space-between;  /* Distribuye los elementos de manera uniforme a lo largo del eje principal */
		width: 100%;  /* Ocupa todo el ancho disponible */
		height: 50px;
	}

	.nav-item {
		flex: 1;  /* Asegura que todos los elementos tomen el mismo espacio */
	}
	.btn-login {  /* Asume que añades una clase "btn-login" al botón de login en tu HTML */
		margin-left: 60px;  /* Ajusta la cantidad de espacio según tus necesidades */
	}
	.btn-signIn{
		margin-left: 60px;
	}
	.navbar-custom-center {
	display: flex;
	justify-content: center; /* Centra horizontalmente los elementos */
	align-items: center; /* Centra verticalmente los elementos */
	}
	.navbar-toggler{
		align-items: center;
	}
	.navbar-custom-center {
		display: flex;
		justify-content: center; /* Centra horizontalmente los elementos */
		align-items: center; /* Centra verticalmente los elementos */
	}

	.navbar-nav {
		flex-direction: row; /* Asegura que los elementos de navegación estén en una fila */
	}

	.navbar-nav .nav-item {
		margin-right: 20px; /* Ajusta el margen entre los elementos de navegación según tus preferencias */
	}

</style>
