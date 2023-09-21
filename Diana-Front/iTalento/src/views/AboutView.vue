<template>
    <div class="container">     
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../assets/img/psyduck.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block captionC">
                        <h5 class="caption-text">Diana M. Bello L.</h5>
                        <p class="caption-text">Co-Funder.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/bullbasur.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="caption-text">Andrés L. Leguizamón G.</h5>
                        <p class="caption-text">Co-Funder.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/squirtle.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="caption-text">Nicolas Rojas M.</h5>
                        <p class="caption-text">Co-Funder.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/charmander.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="caption-text">Kevin S. Nivia V.</h5>
                        <p class="caption-text">Co-Funder.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="cuerpo">
            <div class="siempreT">
                <h1 class="quienes">Siempre existió talento</h1>
            </div>
            <div class="cardiT">
                <div class="card mb-3" style="width: 800px; height: 681px; border: 0px; border-radius: 10px;">
                    <div class="row g-0">
                        <div class="col-md-6">
                            <div class="card-body">
                                <h2 class="card-title">Creemos en latinoamerica</h2>
                                <p class="card-text">En iTalento apostamos por el talento por y para latinoamérica, con menores tasas de comisiones para la plataforma.</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="../assets/img/videog.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cuerpo1">
            <h1>¿Quienes somos?</h1>
        </div>
    </div>
</template>


<style>
    .container {
		max-width: 1400px; /* Puedes ajustar esto */
		margin: 0 auto; /* Centra el contenido */
		
	}
    .container {
        max-width: 1400px; /* Puedes ajustar esto */
        margin: 0 auto; /* Centra el contenido */
    }

    #carouselExampleIndicators {
        max-width: 1400px; /* Establece el ancho máximo del carrusel */
        max-height: 400px; /* Establece la altura máxima del carrusel */
        overflow: hidden; /* Oculta cualquier contenido que exceda el tamaño del contenedor */
    }

    .carousel-inner {
        height: 100%;
        width: 100%;
    }

    .carousel-item img {
        max-width: 1400px;
        max-height: 600px;
        object-fit: contain !important; /* Utiliza !important para asegurarte de que esta regla tenga prioridad */
    }
    .carousel-control-prev-icon,
    .carousel-control-next-icon {
        background-color: #87ceeb;
    }
    .overlay-text {
	position: absolute;
		top: 10%; /* Ajusta la posición verticalmente */
		left: 30%; /* Ajusta la posición horizontalmente */
		transform: translate(-50%, -50%); /* Centra el texto */
		/*background-color: rgba(255, 255, 255, 0.7); /* Fondo blanco semitransparente */
		padding: 10px; /* Espacio alrededor del texto */
		font-size: 24px; /* Tamaño de fuente *//* Color del texto */
        text-align: left;
	}
    .caption-text {
        background-color: rgba(0, 0, 0, 0.5); /* Esto añade un fondo negro transparente */
        padding: 10px; /* Esto añade algo de espacio alrededor del texto */
        border-radius: 5px; /* Esto redondea las esquinas del fondo */
        width: 200px;
    }
    .quienes{
        margin-top:50px;
        text-align: center;
        margin-bottom: 50px;
    }
    .cardiT{
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;    
        flex-direction: column;
    }
 
    .row.g-0 {
        height: 100%;
    }

    .card-body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100%;
    }

    .cardTitle{
        align-items: center;
    }
    .siempreT,
    .cuerpo1{
        background-color: #87ceeb;
        margin-left: 0px;
        margin-right: 0px;
        height: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: aliceblue;
    }
    .siempreT{
        margin-bottom: 20px;
        margin-top:10px
    }
    .cuerpo1{
       margin-top: -1px;
    }
    .card.mb-3 {
        transition: all 0.3s ease;  /* Agrega transición para suavizar el cambio de tamaño */
    }

    .cardiT:hover .card.mb-3 {
        transform: scale(1.02);  /* Aumenta el tamaño de la tarjeta un 5% */
        border: 7px solid #87CEEB;  /* Cambia 'blue' al color que prefieras */
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
    }
</style>
