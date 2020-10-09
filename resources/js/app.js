
// require('./bootstrap');

// window.Vue = require('vue');
// import VueRouter from 'vue-router';

// window.Vue.use(VueRouter);

// import ProductIndex from './components/product/ProductIndex.vue';
// import ProductCreate from './components/product/ProductCreate.vue';
// import ProductEdit from './components/product/ProductEdit.vue';

// import UserIndex from './components/user/UserIndex.vue';
// import UserCreate from './components/user/UserCreate.vue';
// import UserEdit from './components/user/UserEdit.vue';

// const routes = [

//     {
//         path: '/',
//         alias: '/product',
//         component: ProductIndex ,
//     },{
//         path: '/user',
//         component: UserIndex ,
//     },

//     {path: '/product/create', component: ProductCreate, name: 'createProduct'},

//     {path: '/product/edit/:id', component: ProductEdit, name: 'editProduct'},

//     {path: '/user/create', component: UserCreate, name: 'createUser'},

//     {path: '/user/edit/:id', component: UserEdit, name: 'editUser'},


// ];



// const router = new VueRouter({routes});

// const app = new Vue({router}).$mount("#app");



require('./bootstrap');

window.Vue = require('vue');

Vue.component('post-component', require('./components/PostComponent.vue').default);
Vue.component('user-component', require('./components/UserComponent.vue').default);
Vue.component('product-component', require('./components/ProductComponent.vue').default);

const app = new Vue({
    el: '#app',
});
