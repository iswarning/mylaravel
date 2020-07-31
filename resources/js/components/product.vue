<template>
    <div class="container">
        da ra
    </div>
</template>
<script>
    export default {
        data(){
            return{
                vue:null
            }
        },
        mounted(){
            axios.get('/api/vue').then(response => {
                this.vue = response.data.data;
            })
        }
    }
</script>
