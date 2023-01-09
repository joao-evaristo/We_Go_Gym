import { createApp } from 'vue/dist/vue.esm-bundler';
import RatingDecoupledComponent from '../components/RatingVue.vue'

const app = createApp({
    data() {
        return {
            course: 'Intro to Vue 3 and Rails'
        }
    },
    template: `<RatingDecoupledComponent :value=3.5 :total=5> <font-awesome-icon  slot="filled" icon="star" />  <font-awesome-icon slot="half" :icon="['fas', 'star-half-alt']" /> <font-awesome-icon  slot="empty" :icon="['far', 'star']" /> </RatingDecoupledComponent>`
})

app.component('RatingDecoupledComponent', RatingDecoupledComponent)

app.mount('#app');
console.log("app", app);  
