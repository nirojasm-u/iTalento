<template>
	<div id="cabecera" class="">
		<nav class="fixed-top navbar navbar-expand-lg bg-body-secondary">
			<div class="container-fluid">
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
					</ul>
				</div>

				<a class="" href="#">
					<img src="./assets/img/logo.png" alt="Logo" height="50" class="d-inline-block align-text-top">
				</a>

				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</div>

	<div id="Contenido" class="tab-content">
		<NavComp />
		<router-view v-slot="{ Component }">
			<transition name="fadeUp" mode="out-in">
				<component :is="Component" :key="$route.path"></component>
			</transition>
		</router-view>
		<FootNav />
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

	</div>
</template>

<script>
import NavComp from '@/components/NavComp.vue'
import FootNav from '@/components/FootNav.vue'
export default {
	name: 'App',
	components: {
		NavComp,
		FootNav,
	},
}
</script>

<style>
#app {
	color: #2c3e50;
}

.fadeUp-enter-active,
.fadeUp-leave-active {
	transition: opacity 0.25s, transform 0.25s;
}

.fadeUp-enter,
.fadeUp-leave-to {
	opacity: 0;
	transform: translateY(30%);
}
</style>
