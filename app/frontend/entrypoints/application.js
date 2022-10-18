import { createApp } from 'vue/dist/vue.esm-bundler';
import ButtonCounter from '../components/ButtonCounter.vue'  

const app = createApp({
    data() {
        return {
            course: 'Intro to Vue 3 and Rails'
        }
    }
})

app.component('ButtonCounter', ButtonCounter)

app.mount('#app');
console.log("app", app);  
