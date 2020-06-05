<template>
    <div class="app_RJ_HomePage">
        <div class="backgroundDiv">
            <transition :name="direction">
                <component :is="view.viewName"></component>
            </transition>           
        </div>
        <div class="aside-bar">
            <ul>
                <li @click="liclick(0)">
                    <router-link to="#" class="active">
                        <span></span>
                    </router-link>
                </li>
                <li @click="liclick(1)">
                    <router-link to="#">
                        <span></span>
                    </router-link>
                </li>
                <li @click="liclick(2)">
                    <router-link to="#">
                        <span></span>
                    </router-link>
                </li>
               <!--  <li @click="liclick(3)">
                    <router-link to="#">
                        <span></span>
                    </router-link>
                </li> -->
            </ul>
        </div>
        <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/20160819182035_F4zHV.png" alt="" class="dirIcon" @click="imgClick">
        <img class="pg-next-page" src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/20160819111217_jCEKk.png" @click="imgClickDown" v-show="nextBtnShow">
    </div>
</template>

<script>
    import pageOne from "@/components/RJ_Home/pageOne.vue";
    import pageTwo from "@/components/RJ_Home/pageTwo.vue";
    import pageThree from "@/components/RJ_Home/pageFour.vue";
    /* import pageFour from "@/components/RJ_Home/pageOne.1.vue"; */
    import pageFive from "@/components/RJ_Home/pageFive.vue";
    export default {
        data(){
            return {
                direction:'slide-down',
                view:{
                    id:'0',
                    viewName:'page-one'
                },
                viewlist:[
                    {id:'0',viewName:'page-one'},
                    {id:'1',viewName:'page-two'},
                    {id:'2',viewName:'page-three'},
                    /* {id:'3',viewName:'page-four'} */
                ],
                nextBtnShow:true
            }
        },
        methods:{
            setMouseWheel(){
                var timer=null;
                var self=this;
                var pause=0;
                document.onmousewheel = function(e) {   
                    e = e || window.event;
                    var wheelDelta = e.wheelDelta;
                    var id=self.view.id;
                    if(pause==0){
                        if(wheelDelta>0&&id>0){
                            pause=1;
                            id--;
                            self.liclick(id)
                            self.direction='slide-up';
                            self.view=self.viewlist[id];   
                        }else if(wheelDelta<=0&&id<2){
                            pause=1;
                            id++;
                            self.liclick(id)
                            self.direction='slide-down';
                            self.view=self.viewlist[id];  
                        }
                        if(pause==1)
                            setTimeout(function(){pause=0;},800)
                    }
                }
            },
            liclick(n){
                
                var lis=document.querySelectorAll('.app_RJ_HomePage .aside-bar ul li a');
                console.log(lis)
                for(var i=0;i<lis.length;i++){
                    lis[i].className='';
                }
                console.log(lis)
                if(this.view.id>n){
                    this.direction="slide-up"
                }else{
                    this.direction="slide-down"
                }
                this.view=this.viewlist[n];
                n++;
                console.log(n)
                var li=document.querySelector('.app_RJ_HomePage .aside-bar ul li:nth-child('+n+') a');
                li.className='active';      
                
            },
            imgClick(){
                if(this.view.id>0){
                    var id=this.view.id;;
                    id--;
                    this.liclick(id);
                    this.view=this.viewlist[id];
                }
            },
            imgClickDown(){
                if(this.view.id<2){
                    var id=this.view.id;;
                    id++;
                    this.liclick(id);
                    this.view=this.viewlist[id];
                }
            }
        },
        created(){
            document.body.parentNode.style.overflow = 'hidden';
            this.setMouseWheel();

            document.onkeydown=(e)=>{
                var isie = (document.all) ? true:false;
                var key;
                if(isie){
                    key = window.event.keyCode;
                }else{
                    key = e.which;
                }
                if(key==37){
                    //alert('left');
                }
                if(key==38){
                    //alert('top');
                    this.imgClick();
                }
                if(key==39){
                    //alert('right');
                }
                if(key==40){
                    //alert('down');
                    this.imgClickDown();
                }
            }
        },
        mounted(){
        },
        destroyed(){
            document.onmousewheel=null;
        },
        components:{
            'page-one':pageOne,
            'page-two':pageTwo,   
            'page-three':pageThree, 
            /* 'page-four':pageFour,       */
            'page-five':pageFive       
        },
        watch:{
            view:function(val,oldVal){
                if(val.id>=2){
                    this.nextBtnShow=false;
                }else{
                    this.nextBtnShow=true;
                }
            },
            deep:true       
        }
    }
</script>

<style scoped>
    app_RJ_HomePage{
        font-family: Helvetica,"微软雅黑";
    }
    #app_RJ_HomePage {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: #2c3e50;
    }
    .app_RJ_HomePage .backgroundDiv{
        position: absolute;
        left:0;
        top:0;
        height:100%;
        width:100%;
        background-size: auto 100%;    
        z-index:-1;
    }
    .app_RJ_HomePage .aside-bar{
        position: fixed;
        z-index: 100;
        margin-top: -32px;
        top: 50%;
        opacity: 1;
        right: 50px!important;
    }
    .app_RJ_HomePage .aside-bar ul li{
        display: block;
        width: 14px;
        height: 13px;
        margin: 7px;
        position: relative;
        vertical-align: middle;
    }
    .app_RJ_HomePage .aside-bar ul li a{
        display: block;
        position: relative;
        z-index: 1;
        width: 100%;
        height: 100%;
        cursor: pointer;
        text-decoration: none;
    }
    .app_RJ_HomePage a:link{
        color: #5678a0;
    }
    .app_RJ_HomePage .aside-bar ul li a span{
        border-radius: 50%;
        position: absolute;
        z-index: 1;
        height: 4px;
        width: 4px;
        border: 0;
        background: #5678a0;
        left: 50%;
        top: 50%;
        margin: -2px 0 0 -2px;
        transition: all .1s ease-in-out;
    }
    .app_RJ_HomePage .aside-bar ul li a:not(.active) span:hover{
        transform: scale(2)
    }
    .app_RJ_HomePage .aside-bar ul li a.active span{
        background: #ff7d7c;
    }
    .app_RJ_HomePage .aside-bar ul li a.active span{
        height: 12px;
        width: 12px;
        margin: -6px 0 0 -6px;
        border-radius: 100%;
    }

    .app_RJ_HomePage>.dirIcon{
        position: absolute;
        z-index: 100;
        width: 25px;
        right: 51px;
        top: 50%;
        margin-top: 73px;
    }


    .slide-down-enter-active {
        transition: all .8s ease ;
    }
    .slide-down-leave-active {
        transition: all .8s ease  ;
    }
    .slide-down-enter {
        transform: translateY(100.5%);
        opacity: 0;
    }
    .slide-down-leave-to{
        transform: translateY(-100.5%);
        opacity: 0;
    }
    
    .slide-up-enter-active {
        transition: all .8s ease;
    }
    .slide-up-leave-active {
        transition: all .8s ease  ;
    }
    .slide-up-enter {
        transform: translateY(-100.5%);
        opacity: 0;
    }
    .slide-up-leave-to{
        transform: translateY(100.5%);
        opacity: 0;
    }

    @keyframes moveDown {
        0%{
            transform: translateY(0);
            opacity: 0;       
        }
        90%{
            transform: translateY(15px);
            opacity: 1;  
        }
        95%{
            transform: translateY(15px);
            opacity: 0;  
        }
        100%{
            opacity: 0;  
        }
    }
    .app_RJ_HomePage .pg-next-page{
        cursor: pointer;
        position: absolute;
        z-index: 100;
        width: 40px;
        bottom: 50px;
        left: 50%;
        margin-left: -24px;
        animation: moveDown 1.6s linear infinite;
    }
    .backgroundDiv{
        min-width: 1440px;
        min-height:860px;
    }
</style>
