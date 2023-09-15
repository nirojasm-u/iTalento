//alert('Hello from main.js!')
// Import Vue components and createApp function
import { createApp } from 'vue';
import App from './App.vue';

// Create a Vue 3 app instance
const app = createApp(App);

// Mount the app to the DOM
app.mount('#app');