<template>
    <div class="app_page_2">
        <div class="box">
            <transition name="slide-down">
                <div class="pg-mac-img" v-show="isShow">
                    <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/20160818104653_VsaUu.png" alt="">
                </div>
            </transition>
            <transition name="slide-up">
                <div class="pg-mac-cont"  v-show="isShow">
                    <div class="pg-line-before"></div>
                    <div class="pg-title">研究生活细节&nbsp;&nbsp;分享美好时光</div>
                    <div class="pg-content">
                        在这里，你可以记录：<br>
                        美食烹饪心得、美妆护肤评测；<br>
                        影音书观后感、旅行风光游记；<br>
                        住家收纳经验、手作心得教程；<br>
                        绘画心路历程、铲屎官人日记......
                    </div>
                </div>
             </transition>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                isShow:false
            }
        },
        methods:{

        },
        created(){
            
        },
        mounted(){
            this.isShow=true;
        }
    }
</script>

<style scoped>
    .app_page_2{
        position: absolute;
        left:0;
        top:0;
        height:100%;
        width:100%;
        background-size: auto 100%;   
        box-sizing: border-box;
        background: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/shanshui.png) no-repeat;
        background-size: cover
    }
    .app_page_2 .box{
        position: absolute;
        top:150px;
        left:150px;
        display: flex;
        justify-content: space-around;
        
    }
    .app_page_2 .box .pg-mac-img{
        text-align: center;
        margin-right: 25px;
    }
    .pg-mac-cont{
        width:300px;
        overflow: hidden;
    }
    .pg-mac-cont .pg-line-before {
        width: 42px;
        height: 2px;
        background: #000;
    }
    .pg-mac-cont .pg-title {
        font-size: 30px;
        font-weight: 500;
        color: #000;
        padding: 20px 0 40px;
    }
    .pg-mac-cont .pg-content {
        text-align: left;
        font-size: 20px;
        font-weight: 400;
        line-height: 2;
        color: #000;
    }


    .slide-down-enter-active {
        transition: all 3s ease ;
    }
    .slide-down-leave-active {
        transition: all 3s ease  ;
    }
    .slide-down-enter {
        transform: translateY(50%);
        opacity: 0;
    }
    .slide-down-leave-to{
        transform: translateY(-50%);
        opacity: 0;
    }

    .slide-up-enter-active {
        transition: all 3s ease;
    }
    .slide-up-leave-active {
        transition: all 3s ease  ;
    }
    .slide-up-enter {
        transform: translateY(-50%);
        opacity: 0;
    }
    .slide-up-leave-to{
        transform: translateY(50%);
        opacity: 0;
    }


</style>


