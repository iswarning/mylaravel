<template>
    <div class='container'>
        <div class="form-group">
            <router-link to='/user' class="btn btn-default">Back</router-link>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><h4>Create new user</h4></div>
            <div class='panel-body'>
                <form v-on:submit='saveForm()'>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Name</label>
                            <input type="text" v-model="user.name" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Email</label>
                            <input type="number" v-model="user.email" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Password</label>
                            <input type="number" v-model="user.password" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Confirm Password</label>
                            <input type="number" v-model="user.confirmPassword" class="form-control">
                        </div>
                    </div>

                    <div class="row" v-if='success'>
                        <div class='alert alert-success'>
                            {{ success }}
                        </div>
                    </div>
                    <div class='row' v-for="error, index in errors">
                        <div class='alert alert-danger'>
                            {{ error }}
                        </div>
                    </div>
                    <div class='row'>
                         <div class='col-xs-12 form-group'>
                             <button class='btn btn-outline-success'>Create</button>
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
                user: {
                    name: '',
                    email: '',
                    password: '',
                    confirmPassword: '',
                },
                errors: [],
                success: '',
            }
        },
        methods: {
            saveForm() {
                event.preventDefault();
                var newUser = this.user;
                axios.post('/api/user' + newUser)
                    .then((response) => {
                        if(response === true){
                            this.success = "add user success";
                        }else{
                            this.errors = response.data;
                        }
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            }
        }
    }
</script>
