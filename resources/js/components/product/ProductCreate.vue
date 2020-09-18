<template>
    <div class='container'>
        <div class="form-group">
            <router-link to="/" class="btn btn-default">Back</router-link>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">Create new product</div>
            <div class="panel-body">
                <form v-on:submit="saveForm()">
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Product name</label>
                            <input type="text" v-model="product.TenSanPham" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Product price</label>
                            <input type="number" v-model="product.Gia" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Product cate</label>
                            <input type="number" v-model="product.MaLoai" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <button class="btn btn-success">Create</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function () {
            return {
                product: {
                    TenSanPham: '',
                    Gia: null,
                    MaLoai: null,
                }
            }
        },
        methods: {
            saveForm() {
                event.preventDefault();
                var app = this;
                var newProduct = app.product;
                axios.post('/api/product', newProduct)
                    .then(function (resp) {
                        app.$router.push({path: '/'});
                    })
                    .catch(function (response) {
                        console.log(resp.data);
                        alert("Could not create your product");
                    });
            }
        }
    }
</script>
