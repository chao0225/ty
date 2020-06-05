<template>
    <div class="app_page_1">
        <div class="box">
            <div class="dt-header">
                <div class="dt-wrap">
                    <router-link to="#">涂鸦王国</router-link>
                    <div class="dt-header-right">
                        <router-link to="/login" id="dt-login" v-show="!isLogin">登录</router-link>
                        <router-link to="#" id="dt-login" v-show="isLogin">欢迎：{{username}} </router-link>
                        <div id="dt-line"></div>
                        <div id="dt-register" v-show="isLogin" @click="existLogin">退出</div>   
                        <router-link to="/login" id="dt-register" v-show="!isLogin">注册</router-link>
                          
                    </div>
                </div>
            </div>
            <div class="dt-content">
                <img class="pg-logo" src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/logo1.png" alt="">
                <div class="pg-title">中国人气最高的CG艺术家交流学习平台！</div>
                <div class="pg-subtitle">加入我们，与百万画师一起玩涂鸦王国！</div>
                <router-link to="index" class="to-be">
                    <div class="to-be-btn">进入首页 ></div>
                </router-link>
            </div>
        </div>
    </div>
</template>

<script scoped>
    export default {
        data(){
            return {
                isLogin:false,
                username:''
            }
        },
        methods:{
            onBlackBack(e){
                e.target.style.background='rgba(0,0,0,0)';
            },
            existLogin(){
                window.sessionStorage.removeItem('username');
                window.sessionStorage.removeItem('isLogin');
                this.isLogin=false;
            }
        },
        created(){
            var isL=window.sessionStorage.getItem('isLogin');
            var uname=window.sessionStorage.getItem('username');
            this.isLogin=isL;
            this.username=uname;
        },
        mounted(){
        }
    }
</script>

<style scoped>
    .app_page_1{
        display: table;
        table-layout: fixed;
        width: 100%;
        position: absolute;
        left:0;
        top:0;
        height:100%;
        width:100%;
        background-size: auto 100%; 
        background:rgba(0,0,0,0.1);
        overflow: hidden;
        box-sizing: border-box;
        background-image: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/20160818104645_f5QSv.png);
        background-size: cover;
        background-position: center;
    }
    .app_page_1 .box{
        display: table-cell;
        vertical-align: middle;
        width: 100%;
        height: 100%;
    }
    .app_page_1 .dt-header{
        position: absolute;
        top: 0;
        width: 100%;
        background: rgba(255, 255, 255, 1);
        height: 64px;
        z-index: 998;
        font-size: 14px;
        border-bottom:0.5px solid #aaa
    }
    .app_page_1 .dt-header .dt-wrap{
        width: 1000px;
        margin: 0 auto;
    }
    .app_page_1 .dt-header .dt-wrap>a{
        float: left;
        width: 200px;
        height: 64px;
        background-image: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/logo2.jpg);
        background-size: contain;
        background-position: 0 0px;
        background-repeat: no-repeat;
        text-indent: -9999px;
        margin-top: 12px;
    }
    #dt-login{
        float: right;
        margin-left: 10px;
        margin-right: 10px;
        font-size: 14px;
        line-height: 64px;
        text-align: center;
        color: #777;
        text-decoration: none;
    }
    #dt-line{
        float: right;
        background-color: #ebebeb;
        width: 1px;
        height: 24px;
        margin-top: 20px;
    }
    #dt-register{
        display: block;
        float: right;
        text-decoration: none;
        color: #fff;
        width: 52px;
        height: 28px;
        line-height: 28px;
        vertical-align: middle;
        text-align: center;
        background-color: #f46;
        margin-top: 18px;
        border-radius: 3px;
        margin-left: 10px;
        margin-right: 10px;
        font-size: 14px;
    }
    .dt-content{
        text-align: center;
        margin-top: -100px;
    }
    .dt-content .pg-logo{
        width: 400px;
    }
    .dt-content .pg-title{
        padding-top: 44px;
        font-size: 45px;
        font-weight: 400;
        padding-bottom: 11px;
        color: #000;
    }
    .dt-content .pg-subtitle{
        font-size: 26px;
        font-weight: 300;
        color: #777;
        padding-bottom: 50px;
    }
    .dt-content .to-be{
        display: inline-block;
        width: 220px;
        height: 60px;
        line-height: 60px;
        border-radius: 100px;
        font-size: 20px;
        color: #fff;
        background: #ff7d7c;
        cursor: pointer;
        text-decoration: none;
    }
    .dt-content .to-be-btn{
        color: #fff!important;
        font-size: 20px;
    }
</style>


