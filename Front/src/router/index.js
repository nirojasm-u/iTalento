import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const routes = [
	{
		path: '/',
		name: 'home',
		component: HomeView,
	},
	{
		path: '/about',
		name: 'about',
		// route level code-splitting
		// this generates a separate chunk (about.[hash].js) for this route
		// which is lazy-loaded when the route is visited.
		component: () =>
			import(/* webpackChunkName: "about" */ '../views/AboutView.vue'),
	},
	{
		path: '/posts',
		name: 'posts',
		component: () => import('../views/PostsView.vue'),
	},
	{
		path: '/profile',
		name: 'profile',
		component: () => import('../views/ProfileView.vue'),
	},
	{
		path: '/terminos',
		name: 'terminos',
		component: () => import('../views/TermsCond.vue'),
	},
	{
		path: '/pagos',
		name: 'pagos',
		component: () => import('../views/TermsPago.vue'),
	},
	{
		path: '/privacidad',
		name: 'privacidad',
		component: () => import('../views/TermsPrivacidad.vue'),
	},
	{
		path: '/qa',
		name: 'qa',
		component: () => import('../views/QA.vue'),
	}
]

const router = createRouter({
	history: createWebHistory(process.env.BASE_URL),
	routes,
})

export default router
