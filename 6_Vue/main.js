const app = Vue.createApp({
    data(){
        return {
            message: "Hello World!",
            base: 0,
            height:0,
            radius:0,

            products:[
                {name: "りんご", price: 100, stock: 15},
                {name: "みかん", price: 78, stock: 10},
                {name: "バナナ", price: 58, stock: 30},
                {name: "パイナップル", price: 380, stock: 6},
            ],

            numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9]
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
    }
})
const vm = app.mount("#app")


