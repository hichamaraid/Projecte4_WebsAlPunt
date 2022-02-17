require('./bootstrap');

import { createApp } from 'vue';
import welcome from './components/welcome.vue';
const app = createApp({});
app.component('welcome', welcome);
app.mount('#app');