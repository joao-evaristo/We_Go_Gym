import { createApp } from 'vue/dist/vue.esm-bundler';

const register_validation = createApp({
    data() {
        return {
            name: '',
            phone_number: '',
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
        },
        name(value){
          this.validateName(value)
        },
        phone_number(value){
            this.validatePhoneNumber(value)
        }
    },
    methods: {
        validateEmail(value) {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value)) {
                this.msg['email'] = ''
            }
            else {
                this.msg['email'] = ' (Insira um endereço de email válido).'
            }
        },
        validatePassword(value){
            let difference = 8 - value.length
            if (value.length < 8){
                this.msg['password'] = ` (No mínimo 8 caracteres! ${difference} caracteres restantes).`
            }
            else {
                this.msg['password'] = ''
            }
        },
        validateName(value){
            if (/^[a-zA-Z\u00C0-\u00FF]+(([',. -][a-zA-Z\u00C0-\u00FF])?[a-zA-Z]*)*$/.test(value)) {
                this.msg['name'] = ''
            }
            else {
                this.msg['name'] = ' (Nome não pode conter caracteres especiais).'
            }
        },
        validatePhoneNumber(value){
            if (/^((\(0?[1-9][0-9]\))|(0?[1-9][0-9]))[ -.]?([9][0-9]{4})[ -.]?([0-9]{4})$/.test(value)) {
                this.msg['phone_number'] = ''
            }
            else {
                this.msg['phone_number'] = ' (Insira um número de telefone válido).'
            }
        }
    }
})
register_validation.mount('#container-register');