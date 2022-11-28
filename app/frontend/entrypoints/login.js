import { createApp } from 'vue/dist/vue.esm-bundler';

const login_validation = createApp({
    data() {
        return {
            email: '',
            msg: []
        }
    },
    watch: {
        email(value){
            this.validateEmail(value)
        }
    },
    methods: {
        validateEmail(value) {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value)) {
                this.msg['email'] = ''
            }
            else {
                this.msg['email'] = 'Insira um endereço de email válido'
            }
        }
    }
})
login_validation.mount('#loginForm');