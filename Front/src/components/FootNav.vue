<template>
<footer class="mt-5">
	<div class="footer-content"> 
		<ul class="list-group list-group-flush list-group-horizontal text-left mb-0">
			<div class="categoria">
				<router-link class="router-link  large-font" to="/" style="color: #87CEEB; font-weight: bold;">Categorías </router-link>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/" style="color: #0a0a0a;">Diseño gráfico </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/" style="color: #0a0a0a">Marketing digital </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font"  to="/" style="color: #0a0a0a">Escritura y traducción </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font"  to="/" style="color: #0a0a0a">Vídeo y animación </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font"  to="/" style="color: #0a0a0a">Música y audio </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font"  to="/" style="color: #0a0a0a">Programación y tecnología </router-link>
				</li>
			</div>

			<div class="Acerca">
				<li class="list-group-item">
					<router-link class="router-link" to="/about" style="color: #87CEEB; font-weight: bold;">Acerca </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/terminos" style="color: #0a0a0a">Términos y condiciones </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/pago" style="color: #0a0a0a">Términos de pago </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/privacidad" style="color: #0a0a0a">Políticas de privacidad </router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/qa" style="color: #0a0a0a">Preguntas frecuentes</router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/about" style="color: #0a0a0a">¿Quienes somos?</router-link>
				</li>
			</div>

			<div class="Comunidad">
				<li class="list-group-item">
					<router-link class="router-link" to="/posts" style="color: #87CEEB; font-weight: bold;">Comunidad</router-link>
				</li>
				<li class="list-group-item">
					<router-link class="router-link small font" to="/" style="color: #0a0a0a">Foro </router-link>
				</li>
			</div>

		</ul>
	</div>	
		<div class="Footer-down">	
			<div class="imgiTalento">
				<img class="logo" src="../assets/img/Logotipo_italentoKlenik.svg" alt="iTalento logo" />
				<div class="text-black-50 text-center" style="float: left; clear:both; margin-left: 2em;">iTalento &#169; 2023</div>
			<!--<router-link
				to="/"
				class="nav-link"
				:class="{ active: activePath.home }"
				aria-current="page">
				<span class="material-icons-round"> home </span>
			</router-link>--->
			</div>	
			<div class="containerH">
				<div class="buscat">
					<router-link to="/" style="color: #0a0a0a">Busca talento </router-link>
				</div>
				<div class="publicidad">
					<router-link to="/" style="color: #0a0a0a">Publicidad</router-link>
				</div>
				<div>
					<router-link to="/" style="color: #0a0a0a">Blog </router-link>
				</div>
				<div class="apoyo">
					<router-link to="/" style="color: #0a0a0a">Apoyo </router-link>
				</div>
			</div>
			<div class="containerR">
				<div class="social-icons">
					<a href="https://www.facebook.com/profile.php?id=61550128686980" target="_blank" class="social-icon" style="color: #87CEEB;">
						<div class="custom-icon" style="background-color: #3b5998;">
							<span style="color: #FFFFFF;">f</span>
						</div>
					</a>
					<a href="https://twitter.com/iTalento_" target="_blank" class="social-icon">
						<div class="custom-icon" style="background-color: #000000;">
							<span style="color: #FFFFFF;">X</span>
						</div>
					</a>
					<a href="https://www.youtube.com/channel/UCvjCcnsGpzyOhQtm9FLoNJg" target="_blank" class="social-icon">
						<div class="custom-icon" style="background-color: #FF0000;">
							<div class="triangle"></div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</footer>
</template>

<style scoped>
	footer {
		position: sticky;
	}
	img {
		max-width: 120px;
		margin: 0 auto;
		display: block;
		float: left;
		margin-top: -0.5em;
		margin-left: 1.5em;
	}
	.footer-content {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		border-bottom: 1px solid #BFD7D9;
		border-top: 1px solid #BFD7D9;
		max-width: 1500px; 
		margin: auto; /* Centra el bloque */
		margin-top: -40px;
	}
	

	.list-group {
		justify-content: left;
	}
	.list-group-item {
		border: none;
	}
	.containerH{
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		justify-items: center;
		align-items: center;
		margin-right: 100px;
		font-size:medium;
		max-width: 1500px; 
		margin: auto; /* Centra el bloque */
		
	}

	.logo {
	/* Asegura que la imagen no sea más grande que su contenedor */
	height: auto; /* Mantén la relación de aspecto */
	}

	@media (min-width: 768px) {
		footer {
			flex-direction: column; /* Cambia la dirección a columna para dispositivos móviles */
			align-items: center; /* Centra el contenido verticalmente */
			text-align: center; /* Centra el texto horizontalmente */
		}
		img {
			position: relative;
			bottom: 0;
		}
	}
	ul.list-group {
		display: flex;
		justify-content: space-between;
		width: 100%;
	}
	.categoria{
		margin-left: 300px; /* Ajusta este valor según sea necesario */

	}
	.Comunidad{
		margin-right: 300px;

	}
	.categoria,
	.Acerca,
	.Comunidad {
		flex: 1;
		text-align: center; /* Opcional, para centrar el texto */
		border: 0px solid #ccc; /* Opcional, para visualizar los bordes de cada div */
		height: 300px; /* Establece la altura que desees */
		overflow: auto; /* Para que el contenido pueda desplazarse si excede la altura */
	}
	.containerR {
		margin-top: -0.5em;
		text-align: right; /* Opcional, para centrar el texto */
		margin-right: 1.5em;
		display: flex;
		justify-content: flex-end; /* Alinea el contenido a la derecha */
		max-width: 1500px; 
		margin: auto; /* Centra el bloque */
	}

	.social-icons {
		display: flex;
		justify-content: flex-end; /* Alinea los ítems a la derecha */
		align-items: center;  
	}

	.social-icons a {
		margin-right: 15px;  /* Ajusta el margen para los íconos */
		text-decoration: none;
	}

	

	.custom-icon {
	width: 20px;
	height: 20px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 50%; /* Hace que el div sea un círculo */
	}
	.custom-icon span {
	font-weight: bold;
	font-size: 16px;  /* Ajusta según tus necesidades */

	}

	.triangle {
		width: 0;
		height: 0;
		border-left: 4.5px solid transparent; /* Izquierda */
		border-right: 4.5px solid transparent; /* Derecha */
		border-bottom: 4.5px solid white; /* Base */
		transform: rotate(90deg); /* Rota el triángulo 90 grados */
	}
	
	.Footer-down{
		max-width: 1500px; 
		margin: auto; /* Centra el bloque */
	}
	.imgiTalento{
		margin-top:10px;
	}
</style>
