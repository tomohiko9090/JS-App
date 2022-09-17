const app = Vue.createApp({
    data(){
        return {
            newBook: {title: "", author: ""},
            books: [],
        }
    },

    computed: {
        area(){
            return this.base * this.height / 2
        },
        circum(){
            return this.radius * 2 * 3.14
        },
        square(){
            return this.radius ** 2 * 3.14
        },
    },

    // メソッドオプション
    methods:{
        doJanken(key){
            this.you = key
            this.com = parseInt(Math.random() *  3) //0~2の乱数
        }
    }
})

const vm = app.mount("#app") 



