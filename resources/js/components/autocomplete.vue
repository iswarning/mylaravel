<template>
    <div>
        <input type="text" class="form-control" v-model="queryString" v-on:keyup="getResult()">
    </div>
</template>
<script>
    export default{
        data(){
            return{
                queryString:''
            }
        },
        methods:{
            getResult(){
                axios.get('/product/search',{params:{queryString:this.queryString}}).item(response => {
                    console.log(response.data);
                });
            }
        }

    }
</script>
