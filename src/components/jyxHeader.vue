<template>
        <div class="jyxnav">
        <div class="nav-content">
            <router-link to="/" class="d1"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/logo4.png" alt=""></router-link>
            <div class="nav-content-item">
                <ul>
                    <li>
                        <router-link to="/index">作品</router-link>
                        <div class="icon"></div>
                        <div class="slide-list">
                            <router-link to="#">最新发布</router-link>
                            <router-link to="#">最新获赞</router-link>
                            <router-link to="#">热门作品</router-link>
                            <router-link to="#">作品精选</router-link>
                            <router-link to="#">推荐作者</router-link>
                        </div>
                    </li>
                    <li><router-link to="/active">活动比赛</router-link></li>
                    <li><router-link to="/ygzSolicit">征稿</router-link></li>
                    <li><router-link to="#">客户端</router-link></li>
                    <li>
                        <router-link to="#">更多</router-link>
                        <div class="icon"></div>
                        <div class="slide-list">
                            <router-link to="#">合作关系</router-link>
                            <router-link to="#">帮助中心</router-link>
                            <router-link to="#">官方微博</router-link>
                            <router-link to="#">艺场插画授权</router-link>
                        </div>
                    </li>
                    <li>
                        <router-link to="#">
                            <img style="height:35px;vertical-align:middle;" src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/search.svg" alt="">
                        </router-link>
                    </li>
                    <li><router-link to="#">插画课程直播</router-link></li>
                </ul>
            </div>
            <div class="nav-content-item">
                <router-link to="/login">{{usename}}</router-link>
                <router-link to="/login">{{log}}</router-link>
            </div>
        </div>
        </div>
  
</template>
<script>
    export default{
        name:"jyxHeader",
        data(){
            return{
                usename:'注册',
                log:'登录'
            }
        },
        methods:{
            justifyIsLogin(){
                var isL=window.sessionStorage.getItem('isLogin');
                var uname=window.sessionStorage.getItem('username');
                if(isL==true&&uname==true){
                    this.usename=uname;
                    this.log='注销';
                }else{
                    this.usename='注册',
                    this.log='登录';
                }
                
            }
        },
        created(){
            this.justifyIsLogin();
        }
    }
</script>
<style scoped>
         div.jyxnav{
            background: #1A1A1A;
            width: 100%;
            height: 50px;
        }
    @media screen and (max-width:1440px){
        div.jyxnav{
            width: 1440px;
        }
    }
        div.jyxnav>div.nav-content{
            width: 1130px;
            height: 50px;
            margin:0 auto;
        }
        div.jyxnav>div.nav-content>.d1>img{
            float: left;
            width: 40px;
            height: 40px;
            margin-right:25px;
        }
        div.jyxnav>div.nav-content>.nav-content-item:nth-child(2)>ul>li{
            list-style: none;
            float: left;
            height: 50px;
            padding: 0 16px 0 16px;
            line-height: 50px;
            position: relative;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:nth-child(7)>a{
            color: orange;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:nth-child(7)>a:hover{
            color: #777;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li>a{
            text-decoration: none;
            font-size: 14px;
            color:#ccc;
            cursor: pointer;
        }
        .jyxnav div.nav-content-item:nth-child(3){
            float: right;
            line-height: 50px;
        }
       .jyxnav  div.nav-content-item:nth-child(3)>a{
            text-decoration: none;
            font-size: 12px;
            color:#ccc;
            padding-left: 12px;
        }
        .jyxnav div.nav-content-item:nth-child(3)>a:hover{
            color: #fff;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child>div.icon,div.nav-content-item:nth-child(2)>ul>li:nth-child(5)>div.icon{
            width:10px;
            height:10px;
            border-bottom:5px solid #fff;
            border-left:5px solid transparent;
            border-right:5px solid transparent;
            border-top:5px solid transparent;
            position: absolute;
            top:40px;
            left:26px;
            visibility: hidden;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child>div.slide-list,div.nav-content-item:nth-child(2)>ul>li:nth-child(5)>div.slide-list{
            width: 118px;
            /*height: 170px;*/
            text-align: center;
            border:1px solid rgba(0, 0, 0, .1);
            position: absolute;
            top: 50px;
            left: -27px;
            background-color: #fff;
            border-radius: 3px;
            box-shadow: 0 3px 6px rgba(0,0,0,.1);
            z-index:100;
            visibility: hidden;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child>div.slide-list>a,div.nav-content-item:nth-child(2)>ul>li:nth-child(5)>div.slide-list>a{
            text-decoration: none;
            display: block;
            line-height: 34px;
            color: #333;
            cursor:pointer;
            font-size:14px;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child>div.slide-list>a:hover, div.nav-content-item:nth-child(2)>ul>li:nth-child(5)>div.slide-list>a:hover{
            color: #777;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child:hover div.slide-list,div.nav-content-item:nth-child(2)>ul>li:nth-child(5):hover div.slide-list{
            visibility:visible;
        }
        .jyxnav div.nav-content-item:nth-child(2)>ul>li:first-child:hover div.icon,div.nav-content-item:nth-child(2)>ul>li:nth-child(5):hover div.icon{
            visibility: visible;
        }
</style>