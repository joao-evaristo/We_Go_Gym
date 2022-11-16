import { createApp } from 'vue/dist/vue.esm-bundler';

const register_validation = createApp({
    data() {
        return {
            email: '',
            password: '',
            msg: [],
        }
    },
    watch: {
        email(value){
            this.validateEmail(value)
        },
        password(value){
            this.validatePassword(value)
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
        },
        validatePassword(value){
            let difference = 8 - value.length
            if (value.length < 8){
                this.msg['password'] = `No mínimo 8 caracteres! ${difference} caracteres restantes`
            }
            else {
                this.msg['password'] = ''
            }
        },
    }
})
register_validation.mount('#loginForm');