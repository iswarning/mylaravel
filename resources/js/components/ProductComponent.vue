<template>
    <div class='container'>

        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" v-on:click="resetForm()">Add New Product</button>
        <p>&nbsp;</p>
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <div class="modal-title"><button class='btn btn-danger btn-sm' v-on:click="resetForm()">Reset</button></div>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                                            

                        <form v-on:submit.prevent="submit(id)" enctype="multipart/form-data">
                            <div class="modal-body">
                            
                                <div v-if="success" class="row">
                                    <div class="alert alert-success col-sm-11">{{success}}</div>
                                </div>
                                <div v-else>
                                    <div class="row" v-if="errors.TenSanPham">
                                        <div v-for="error in errors.TenSanPham" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.Gia">
                                        <div v-for="error in errors.Gia" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.MoTa">
                                        <div v-for="error in errors.MoTa" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.HinhAnh">
                                        <div v-for="error in errors.HinhAnh" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.HinhCT1">
                                        <div v-for="error in errors.HinhCT1" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.HinhCT2">
                                        <div v-for="error in errors.HinhCT2" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                    <div class="row" v-if="errors.HangSanXuat">
                                        <div v-for="error in errors.HangSanXuat" :key="error" class='col-sm-11'>
                                            <div class="alert alert-danger">{{ error }}</div>
                                        </div>
                                    </div>
                                </div>

                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Category: </b></label>

                                <select class='form-control col-sm-8' v-on:change="selectChange" :value="category_id">
                                    <option v-for="category in categories" :key="category.id" :value="category.id">
                                        {{ category.name }}
                                    </option>
                                </select>

                            </div>

                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Name: </b></label>
                                <input type='text' class='form-control col-sm-8' v-model="name"/>
                            </div>                                                       
                            
                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Price: </b></label>
                                <input type='text' class='form-control col-sm-8' v-model="price"/>
                            </div>
                            
                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>MoTa: </b></label>
                                <textarea rows='3' class='form-control col-sm-8' v-model="mota"></textarea>
                            </div>

                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Main Image: </b></label>
                                <img :src="img0" width='40px' height='40px' class='col-sm-2'/>
                                <input v-on:change="imgChange0" type='file' class='form-control col-sm-6'/>
                            </div>
                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Mini Image 1: </b></label>
                                <img :src="img1" width='40px' height='40px' class='col-sm-2'/>
                                <input v-on:change="imgChange1" type='file' class='form-control col-sm-6'/>
                            </div>
                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Mini Image 2: </b></label>
                                <img :src="img2" width='40px' height='40px' class='col-sm-2'/>
                                <input v-on:change="imgChange2" type='file' class='form-control col-sm-6'/>
                            </div>

                            <div class='form-group row'>
                                <label class='col-sm-3 col-form-label'><b>Brand: </b></label>
                                <input  type='text' class='form-control col-sm-8' v-model="brand"/>
                            </div>

                            </div>
                            <div class="modal-footer">
                            <button type='submit' class='btn btn-primary'>Save</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        <div class='row'>
            <table class='table table-bordered'>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Img</th>
                        <th>Img</th>
                        <th>Img</th>
                        <th>Brand</th>
                        <th>Action</th>                       
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="product in products" :key="product.id">
                        <td>{{product.id}}</td>
                        <td>{{product.TenSanPham}}</td>
                        <td>{{product.Gia}}</td>
                        <td><img :src="product.HinhAnh" width="40px" height="40px" ></td>
                        <td><img :src="product.HinhCT1" width="40px" height="40px" ></td>
                        <td><img :src="product.HinhCT2" width="40px" height="40px" ></td>
                        <td>{{product.HangSanXuat}}</td>
                        <td>
                            <button class="btn btn-primary btn-sm" v-on:click="getOne(product)" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil"></i></button>
                            <button class="btn btn-danger btn-sm" v-on:click="deleteOne(product.id)"><i class="fa fa-trash"></i></button>
                        </td>
                        
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>


export default {
    props:  {
        user_id: String
    },
    data() {
        return {
            products: [],
            categories: [],
            category_id: 1,
            id: 0,
            name: '',
            price: null,
            mota: '',
            img0: null,
            img1: null,
            img2: null,
            brand: '',
            errors : {},
            success: ''
        }
    },

    mounted() {
        this.getAll();
        this.getCate();
    },

    methods: {
        getAll(){
            axios.get('/api/product')
                .then(res => {
                    this.products = res.data;
                })
                .catch(err => {
                    console.log(err);
                });
        },

        selectChange: function(event){
            this.category_id = event.target.value;
        },

        imgChange0: function(event) {
            var reader = new FileReader();
            reader.onload = function(){
                this.img0 = reader.result
            }.bind(this);
            reader.readAsDataURL(event.target.files[0]);
        },
        imgChange1: function(event) {
            var reader = new FileReader();
            reader.onload = function(){
                this.img1 = reader.result
            }.bind(this);
            reader.readAsDataURL(event.target.files[0]);
        },
        imgChange2: function(event) {
            var reader = new FileReader();
            reader.onload = function(){
                this.img2 = reader.result
            }.bind(this);
            reader.readAsDataURL(event.target.files[0]);
        },

        

        getCate(){
            axios.get('/api/type-product')
                .then(res => {
                    this.categories = res.data;
                })
                .catch(err => {
                    console.log(err);
                });
        },

        getOne(product){
            this.resetForm();
            this.id = product.id;
            this.name = product.TenSanPham;
            this.price = product.Gia;
            this.mota = product.MoTa;
            this.img0 = product.HinhAnh;
            this.img1 = product.HinhCT1;
            this.img2 = product.HinhCT2;
            this.brand = product.HangSanXuat;
            this.category_id = product.MaLoai;
        },

        deleteOne(id){
            axios.delete('/api/product/' + id)
                .then(res => {
                    this.getAll();
                })
                .catch(err =>{
                    console.log(err);
                });
        },

        submit(id){
            
            if(this.id == 0)
            {
                axios.post('/api/product', {
                    headers: {
                        'Content-Type': 'multipart/form-data'
                    },
                    TenSanPham: this.name,
                    Gia: this.price,
                    MoTa: this.mota,
                    HinhAnh: this.img0,
                    HinhCT1: this.img1,
                    HinhCT2: this.img2,
                    HangSanXuat: this.brand,
                    MaLoai: this.category_id
                })
                .then(res => {
                    this.getAll();
                    this.success = res.data.message;
                })
                .catch(err => {
                    this.errors = err.response.data.errors;
                });
            }
            else
            {
                axios.put('/api/product/' + id, {
                    headers: {
                        'Content-Type': 'multipart/form-data'
                    },
                    TenSanPham: this.name,
                    Gia: this.price,
                    MoTa: this.mota,
                    HinhAnh: this.img0,
                    HinhCT1: this.img1,
                    HinhCT2: this.img2,
                    HangSanXuat: this.brand,
                    MaLoai: this.category_id
                })
                .then(res => {
                    this.getAll();
                    this.success = res.data.message;
                })
                .catch(err => {
                    console.log(err);
                });
            }
        },

        resetForm(){
            this.category_id = 1;
            this.id = 0;
            this.name = '';
            this.price = null;
            this.mota = '';
            this.img0 = null;
            this.img1 = null;
            this.img2 = null;
            this.brand = '';
            this.errors = {};
            this.success = '';
        }
    }
}
</script>
