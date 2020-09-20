/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import VueRouter from 'vue-router';

window.Vue.use(VueRouter);

import ProductIndex from './components/product/ProductIndex.vue';
import ProductCreate from './components/product/ProductCreate.vue';
import ProductEdit from './components/product/ProductEdit.vue';

import UserIndex from './components/user/UserIndex.vue';
import UserCreate from './components/user/UserCreate.vue';
import UserEdit from './components/user/UserEdit.vue';

const routes = [
    {
        path: '/',
        components: {
            productIndex: ProductIndex
        }
    },
    {path: '/create', component: ProductCreate, name: 'createProduct'},
    {path: '/edit/:id', component: ProductEdit, name: 'editProduct'},

    {
        path: '/user',
        components:{
            userIndex : UserIndex
        }
    },
    {path: '/user/create', component: UserCreate, name: 'createUser'},
    {path: '/user/edit/:id', component: UserEdit, name: 'editUser'},
];

const router = new VueRouter({routes});

const app = new Vue({router}).$mount("#app");
/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */


