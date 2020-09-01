<template>
    <div>
        <li class="list-group-item" :class="className" :style="floatName"><slot></slot></li>
        <span id='time'>{{time}}</span>
        <small class="badge float-right" :class='badgeClass'>{{ user }}</small>
    </div> 
</template>

<script>
    export default{

        props:[
            'color',
            'float',
            'user',
            'time'
        ],

        computed:{
            className(){
                return 'list-group-item-'+this.color;
            },
            badgeClass(){
                return 'badge-'+this.color;
            },
            floatName(){
                return 'float:'+this.float;
            }
        },

        mounted(){
            console.log('Component mounted.');
        }
    }
</script>
<style>
    #time{
        font-size:8px;
    }
</style>