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

            numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9],

            activeTab: 'tabs-1',
            tabs: [
                {name:'tabs-1', text: 'タブ1'},
                {name:'tabs-2', text: 'タブ2'},
                {name:'tabs-3', text: 'タブ3'},
            ],
            
            hands: ["グー", "チョキ", "パー"],
            you: null,
            com: null,
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
    methods:{
        doJanken(key){
            this.you = key
            this.com = parseInt(Math.random() *  3) //0~2の乱数
        }
    }
})
const vm = app.mount("#app")


