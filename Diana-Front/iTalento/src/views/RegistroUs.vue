<template>
    	<div class="card">
					<card-comp :btns="btnArray" class="mx-auto card-comp">
						<template #default>
							<form>
								<div class="mb-3 mt-2">
									<input
										type="email"
										class="form-control"
										placeholder="Ingresa tu email" />
								</div>
								<div class="mb-3 mt-2">
									<input
										type="password"
										class="form-control"
										placeholder="Contraseña" />
								</div>
							</form>
						</template>
						<template v-slot:footer>
							<hr />
							<button class="btn btn-success">Crear cuenta</button>
						</template>
					</card-comp>
				</div>
</template>
<script>
	// @ is an alias to /src
	import CardComp from '../components/CardComp.vue'

	export default {
		name: 'HomeView',
		components: {
			CardComp,
		},

		data() {
			return {
				btnArray: [
					{
						txt: 'Iniciar sesión',
						class: 'btn-primary',
					},
					{
						txt: 'Has olvidado tu contraseña?',
						class: '',
					},
				],
			}
		},
	}
</script>
<style scoped>
	h2 {
		max-width: 470px;
		margin: auto;
		font-size: 1.8rem;
	}
	.home {
		max-width: 895px;
		margin: auto;

	}
	.img-cont {
		display: flex;
		margin: 0;
  		padding: 0;
  		width: 100%;
  		height: 100vh; /* 100% del alto de la ventana */
  		overflow: hidden;
		
	}
	.img-cont img {
  		width: 100%;
 	 	height: 100%;
  	object-fit: cover; /* Ajustar la imagen para cubrir todo el contenedor */
	}
	img {
		max-width: 315px;
		margin: 1em auto 0 auto;
		
	}

	.card-comp {
		max-width: 398px;
	}
	.btn-success {
		margin: auto;
		min-width: 195px;
	}

	@media (min-width: 992px) {
		.home {
			margin: 4em auto;
		}
		img {
			margin: 0;
			margin-top: 5.6em;
		}
		h2 {
			
			margin: 0;
			margin-top: -0.8em;
			margin-left: 0.8em;
		}
		.card-comp {
			margin-top: 3rem;
		}
	}
</style>
