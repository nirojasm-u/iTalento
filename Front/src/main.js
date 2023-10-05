import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import '@/assets/bootstrap.min.css'
import '@/assets/bootstrap.bundle.min.js'
import '@/assets/custom_styles.css'
import 'font-awesome/css/font-awesome.min.css'
import 'material-icons/iconfont/material-icons.css'

createApp(App).use(store).use(router).mount('#app')
