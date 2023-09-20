<template>
	<div class="container">
		<div class="Imagen">
			<div class="image-container">
				<img src="../assets/img/prueba.png" class=" img-fluid" alt="...">
				<div class="overlay-text">
					<h1>Conectando talentos,</h1> 
					<h1>creando oportunidades.</h1>
				</div>
				<div class="overlay-text1">
					<h6>@Highwind</h6> 
					<h5>Diseñador gráfico.</h5>
				</div>
			</div>
		</div>
		<div class="cardsspace">
			<div class="texto1">
				<h1>Servicios populares</h1>
			</div>
			<div class="card-deck">
				<div class="card">
					<img src="../assets/img/programacion.jpg" class="img-fluid" alt="...">
					<div class="overlay-text2">
						<h6 class="card-title">iTalento-Programación & IT</h6>
					</div>
				</div>
				<div class="card">
					<img src="../assets/img/idea.jpg" class="img-fluid" alt="...">
					<div class="overlay-text3">
						<h6 class="card-title">iTalento-Diseño gráfico</h6>
					</div>
				</div>
				<div class="card">
					<img src="../assets/img/pluma.jpg" class="card-img-top" alt="...">
					<div class="overlay-text4">
						<h6 class="card-title">iTalento-Escritura y traducción</h6>
					</div>
				</div>
				<div class="card">
					<img src="../assets/img/musica.jpg" class="card-img-top" alt="...">
					<div class="overlay-text5">
						<h6 class="card-title">iTalento-Música y audio</h6>
					</div>
				</div>
				<div class="card">
					<img src="../assets/img/diseño.jpg" class="card-img-top" alt="...">
					<div class="overlay-text6">
						<h6 class="card-title">iTalento-Marketing digital</h6>
					</div>
				</div>
			</div>
		</div>
		<div class="cardsspace2">
			<div class="texto2">
				<h1>¿Buscas mostrar tu talento?</h1>
			</div>
			<div class="card-deck mostrar">
				<div class="card1a">
					<div class="textb">
						<h4 class="card-title" style="color:#87CEEB">No te preocupes, acá te apoyamos</h4>
						<br>
						<h6>Plataforma sólida y fácil de usar que empodera a freelancers latinoamericanos.</h6>
						<br>
					</div>
					<img src="../assets/img/latam.png" alt="Descripción de la imagen" class="imgCard">
				</div>
				<div class="card1a">
					<div class="textb1">
						<h4 class="card-title" style="color:#87CEEB">Bonificaciones por ser el mejor</h4>
						<br>
						<h6>Bonificaciones tales como tarifas de servicio reducidas y la capacidad de ofrecer más servicios o "Gigs" simultáneamente.</h6>
						<br>
					</div>
					<img src="../assets/img/dinero.png" alt="Descripción de la imagen" class="imgCard">
				</div>
				<div class="card1a">
					<div class="textb2">
						<h4 class="card-title" style="color:#87CEEB">Contamos con soporte 24/7</h4>
						<h6>Asistencia continua a nuestros freelancers a través de un soporte 24/7, entendiendo que el mundo del trabajo independiente nunca duerme. </h6>
						<br>
					</div>
					<img src="../assets/img/soporte.png" alt="Descripción de la imagen" class="imgCard">
				</div>
			</div>
		</div>
	</div>
</template>

<style scoped>
	.Imagen {
		position: relative;
	}
	.container {
		max-width: 1500px; /* Puedes ajustar esto */
		margin: 0 auto; /* Centra el contenido */
	}
	.image-container {
		position: relative;
		display: inline-block;
		height: 700px;
		object-fit: cover;
		width: 1500px;
	}

	.overlay-text {
	position: absolute;
		top: 55%; /* Ajusta la posición verticalmente */
		left: 16%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		padding: 10px; /* Espacio alrededor del texto */
		font-size: 24px; /* Tamaño de fuente */
		color: #EBEBEB; /* Color del texto */
	}
	.overlay-text1 {
		position: absolute;
		top: 92%; /* Ajusta la posición verticalmente */
		left: 87%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 24px; /* Tamaño de fuente */
		padding: 10px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid white; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	
	.overlay-text2 {
		position: absolute;
		top: 12%; /* Ajusta la posición verticalmente */
		left: 40%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 15px; /* Tamaño de fuente */
		padding: 5px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid white; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	.overlay-text3 {
		position: absolute;
		top: 12%; /* Ajusta la posición verticalmente */
		left: 40%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 15px; /* Tamaño de fuente */
		padding: 5px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid white; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	.overlay-text4 {
		position: absolute;
		top: 12%; /* Ajusta la posición verticalmente */
		left: 40%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 15px; /* Tamaño de fuente */
		padding: 5px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid #EBEBEB; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	.overlay-text5 {
		position: absolute;
		top: 12%; /* Ajusta la posición verticalmente */
		left: 40%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 15px; /* Tamaño de fuente */
		padding: 5px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid #EBEBEB; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	.overlay-text6 {
		position: absolute;
		top: 12%; /* Ajusta la posición verticalmente */
		left: 40%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		font-size: 15px; /* Tamaño de fuente */
		padding: 5px;
		color: #EBEBEB; /* Color del texto */
		border: 1px solid #EBEBEB; /* Borde de 1 píxel de ancho y blanco */
  		border-radius: 5px; /* Borde redondeado de 5 píxeles */
	}
	.texto1{
		margin-top: 200px;
		margin-left: 100px;
		margin-bottom: 40px;
	}
	.texto2{
		margin-top: 100px;
		margin-left: 100px;
		margin-bottom: 40px;
	}
	.card-deck {
		display: flex;
		flex-wrap: nowrap;  /* Esto evitará que los elementos se envuelvan en múltiples filas */
	  /* Esto hará que el contenedor tenga desplazamiento horizontal */
		border-radius: 30px;
	}

  	.card {
		margin-left: 17px;
		flex: 0 0 auto;     /* Esto evitará que las tarjetas crezcan o se encojan */
		width: 255px;       /* Ancho fijo para todas las tarjetas */
		min-height: 400px;  /* Altura mínima para todas las tarjetas */
		margin-right: 20px;
		border-radius: 30px;
	}
	.card img {
		object-fit: cover;  /* Ajusta la imagen para cubrir todo el espacio */
		width: 100%;         /* Ocupa todo el ancho del contenedor */
		height: 100%;        /* Ocupa todo el alto del contenedor */
	}
	.card1 {
		margin-left: 17px;
		flex: 0 0 auto;     /* Esto evitará que las tarjetas crezcan o se encojan */
		width: 255px;       /* Ancho fijo para todas las tarjetas */
		min-height: 400px;  /* Altura mínima para todas las tarjetas */
		margin-right: 20px;
		display: flex;
 		justify-content: center;
	}
	.card1 img {
		object-fit: cover;  /* Ajusta la imagen para cubrir todo el espacio */
		width: 100%;         /* Ocupa todo el ancho del contenedor */
		height: 100%;        /* Ocupa todo el alto del contenedor */
	}
	.cardspace2{
		justify-content: center;
	}
	.card:hover {
		border: 7px solid #87CEEB;  /* Cambia 'blue' al color que prefieras */
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);  /* Esto añade un poco de sombra para un efecto más profundo, opcional */
	}
	.mostrar{
		justify-content: center;
		width: 1500px;
		margin: 0 auto;
	}
	.card1{
		width: 410px;
		border: 2px solid #87CEEB ;
		padding: 10px;
		border-radius: 30px;
		height: 300px;

	}
	.card1:hover {
		height: 300px;
		border: 7px solid #87CEEB;  /* Cambia 'blue' al color que prefieras */
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);  /* Esto añade un poco de sombra para un efecto más profundo, opcional */
	}
	.card1a{
		width: 410px;
		margin-left:40px;
		/*border: 2px solid #87CEEB ;*/
		padding: 10px;
		/*border-radius: 30px;*/
		height: 400px;
	}
	.card1a img {
    	max-width: 150px;
	}
	.imgCard{
		display: block;
		margin: auto;
    	max-width: 100px;
	}
	.textb{
		justify-content: center;
	}
	.card1a:hover {
		height: 400px;
		border: 2px solid #87CEEB;  /* Cambia 'blue' al color que prefieras */
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);  /* Esto añade un poco de sombra para un efecto más profundo, opcional */
	}
</style>




