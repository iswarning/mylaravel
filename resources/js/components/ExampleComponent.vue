<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Example Componentse</div>

                    <div class="card-body">
                        <ul v-for="test in tests">
                            <li>{{test.id}}</li>
                            <li>{{test.name}}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                test:[]
            }
        },
        mounted() {
            axios
            .get('/api/test')
            .then(response=>(
                this.test=response.data.data
            ))
        }
    }
</script>
