<template>
    <div class="container">     
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../assets/img/psyduck.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/bullbasur.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/squirtle.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../assets/img/charmander.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Fourth slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
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

</style>
