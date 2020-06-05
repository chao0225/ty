<template>
    <div id="jyx">
        <jyxHeader></jyxHeader>
        <div id="nav">
        <div class="work-nav">
            <div>
                <ul class="wnav">
                    <li><router-link to="#"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/home3.png" alt=""></router-link></li>
                    <li><router-link to="#">全部</router-link></li>
                    <li><router-link to="#">进行</router-link></li>
                    <li><router-link to="#">已结束</router-link></li>
                    <li><router-link to="#">我的资料</router-link></li>
                </ul>
                <ul class="wnav">
                    <li><router-link to="#">公司介绍</router-link></li>
                    <li><router-link to="#">活动合作QQ：2090677817</router-link></li>
                </ul>
            </div>
        </div>
        <div class="wrapper">
            <router-link to="#" target="_blank">
                <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_srydfvcj74t9oh5fsgb15bbx8lx36s5r.jpg" alt="">
            </router-link>
        </div>
    </div>
    <div id="fixBar">
        <a href="#"></a>
        <a>
            <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/xcx.jpg" alt="" style="width:75px;margin:1px 0 1px;">
        </a>
        <router-link to="#" style="padding:2px">微信小程序</router-link>
    </div>
    <div id="section">
        <div class="list_wrap">
            <ul>
                <li v-for="item in list" :key="item.aid">
                    <div>
                        <router-link to="#">
                            <img v-lazy="item.pic" alt="">
                        </router-link>
                    </div>
                    <div>
                        <div>
                            <h3>{{item.title}}</h3>
                            <p :style="{color:item.aid===aid?'#a0a5ad':'#00d084'}">{{item.end | res}}</p>
                        </div>
                        <div>
                            <div>
                                <div class="date_box" id="d" :style="{color:item.aid===aid?'#a0a5ad':'#00d084'}">{{item| date}}</div>
                                <p>天</p>
                            </div>
                            <div>
                                <div class="date_box" id="h" :style="{color:item.aid===aid?'#a0a5ad':'#00d084'}">{{item| hours}}</div>
                                <p>时</p>
                            </div>
                            <div>
                                <div class="date_box" id="m" :style="{color:item.aid===aid?'#a0a5ad':'#00d084'}">{{item| minute}}</div>
                                <p>分</p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="page">
                <a href="#" v-if="onClass>0" @click="first(1)">首页</a>
                <a href="#" @click="pagePrev(tem1)" v-if="onClass>0">上页</a>
                <a href="#" v-for="(pno,index) in pnos" :key="index" v-text="pno" @click="pageChange(pno)" :class="{on:index===onClass?true:false}"></a>
                <a href="#" @click="pageNext(tem1)" v-if="onClass!==pageCounts-1">下页</a>
                <a href="#" @click="last(pageCounts)" v-if="onClass!==pageCounts-1">尾页</a>
            </div>
        </div>
    </div>
    <div class="wrapper_bottom">
            <router-link to="#" target="_blank">
                <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/pic_rbc5zndyvpa475j3o01gd4xw0lje8ywu.jpg" alt="">
            </router-link>
        </div>
        <jyxFooter></jyxFooter>
    </div>
</template>
<script>
    import jyxHeader from "@/components/jyxHeader.vue";
    import jyxFooter from "@/components/jyxFooter.vue";
    export default{
        data(){
            return{
                list:[],
                aid:2,
                pnos:this.pnos,
                onClass:0,
                tem:0,
                tem1:1,
                pageCounts:self.pageCounts
            }
        }, 
        created() {
            document.body.parentNode.style.overflow = 'auto';
            (async function(self){
                var res=await self.$http.get("http://localhost:3000/active");
                self.res=res.data; 
                self.list=self.res.data;
                self.pageCounts=self.res.pageCount;
                console.log(self.pageCounts);
                var pnos=[];
                for(var pno=1;pno<self.pageCounts+1;pno++){
                    pnos.push(pno);
                }
                self.pnos=pnos;
            })(this);
        },
         //props:["index"],
        components:{
            jyxHeader,
            jyxFooter
        },
        methods:{
            pageChange(index){
                this.tem=index;
                var self=this;
                var url="http://localhost:3000/active?pno="+index;
                this.$http.get(url).then(result=>{
                    self.list=result.data.data;
                     console.log(result);
                })
                this.onClass=index-1;
                this.tem1=index;
            },
            pagePrev(index){
                index--;
                var url="http://localhost:3000/active?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                if(this.tem1>0) this.tem1=index;
                
                console.log(index);
            },
            pageNext(index){
                index++;
                var url="http://localhost:3000/active?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                if(this.tem1<this.pageCounts+1) this.tem1=index;
                 console.log(index);
            },
            first(index){
                var url="http://localhost:3000/active?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                this.tem1=index;
            },
            last(index){
               var url="http://localhost:3000/active?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                this.tem1=index; 
            }
        }
    }
</script>
<style scoped>
        #jyx{
            font-family: 微软雅黑;
            font-size: 14px;
            line-height: 24px;
        }
        #jyx a{
            text-decoration: none;
            color:#000;
        }
        #jyx #nav>.work-nav{
            width:100%;
            height:50px;
            background-color:#fff;
            line-height: 50px;
        }
        #jyx #nav>.work-nav>div{
            width:1120px;
            height:50px;
            margin:0 auto;
        }
        #jyx #nav>.work-nav>div>.wnav>li{
            list-style: none;
            padding:0 15px 0;
        }
        #jyx #nav>.work-nav>div>.wnav:first-child>li{
            float:left;
        }
        #jyx #nav>.work-nav>div>.wnav:first-child>li:first-child>a>img{
            width:16px;
        }
        #jyx #nav>.work-nav>div>.wnav:last-child>li{
            float:right;
        }
        #jyx #nav>.work-nav>div>.wnav>li>a{
            color:#444445;
            font-size: 15px;
        }
        #jyx #nav>.wrapper{
            width:100%;
            background-color:#E6EAED;
            text-align: center;
        }
        #jyx nav>.wrapper>a>img{
            width: 1120px;
            height:90px;
            margin:20px 0 20px 0;
        }
        #jyx #fixBar{
            position: fixed;
            right:20px;
            bottom: 100px;
            width: 80px;
        }
        #jyx #fixBar>a:first-child{
            width: 80px;
            height: 35px;
            display: block;
            border:1px solid #e7e7e7;
            background:#fbfbfb url("https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/top.jpg") no-repeat center;
        }
        #jyx #fixBar>a:nth-child(2){
            width: 80px;
            height: 80px;
            display: block;
            border:1px solid #e7e7e7;
            background:#fff;
        }
        #jyx #fixBar>a:last-child{
            display: block;
            background: #fbfbfb;
            border: 1px #e7e7e7 solid;
            padding: 3px 5px;
            font-size: 12px;
            text-align: center;
            line-height: 16px;
            opacity: .9;
            margin-top: 4px;
            cursor: pointer;
        }
        #jyx #section{
            width: 100%;
            /*height: 2510px;*/
            background-color:#ffffff;
        }
        #jyx #section>.list_wrap{
            width: 1120px;
            /*height: 2510px;*/
            margin: 0 auto;
        }
        #jyx #section>.list_wrap>ul{
            overflow: hidden;
            list-style: none;
            margin: 0 -2px 0 -30px;
            padding-top: 50px;
        }
        #jyx #section>.list_wrap>ul>li{
            float:left;
            width: 546px;
            margin: 0 0 45px 30px;
            padding:0 2px 2px 0;
            color: #858585;
        }
        #jyx #section>.list_wrap>ul>li>div:first-child>a>img{
            width: 100%;
            cursor: pointer;
        }
        #jyx #section>.list_wrap>ul>li>div:first-child>a>img:hover{
            opacity:0.8;
            transition-duration: .15s;
            transition-timing-function: linear;
            transition-delay: 0s;
        }
        #jyx #section>.list_wrap>ul>li>div:last-child{
            display: flex;
            justify-content: space-between;
        }
        #jyx #section>.list_wrap>ul>li>div:last-child>div:first-child>h3{
            overflow: hidden;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            line-height: 27px;
            color: #1a1a1a;
        }
        #jyx #section>.list_wrap>ul>li>div:last-child>div:first-child>p{
            padding-top: 22px;
            font-size: 15px;
            font-weight: bold;
        }
        #jyx #section>.list_wrap>ul>li>div:last-child>div:last-child{
            display: flex;
            justify-content: space-between;
            text-align: center;
            margin-top: 20px;
        }
        #jyx #section>.list_wrap>ul>li>div:last-child>div:last-child>div>.date_box{
            width: 55px;
            height: 46px;
            margin-bottom: 6px;
            background: #fff;
            border: 1px solid #e7eaed;
            font-size: 28px;
            letter-spacing: 1px;
            line-height: 48px;
            font-weight: bold;
        }
        #jyx #section>.list_wrap>.page{
            text-align: center;
            padding-bottom:30px;
        }
        #jyx #section>.list_wrap>.page>.on{
            background: #ffbb33;
            color: #fff;
            border: 1px #ffbb33 solid;
        }
        #jyx #section>.list_wrap>.page>a{
            line-height: 38px;
            height: 38px;
            padding: 0 15px;
            color: #888;
            border: 1px #d5d5d3 solid;
            background: #fefefe;
            margin: 0 2px;
            border-radius: 5px;
            display: inline-block;
            font-size: 14px;
        }
        #jyx .wrapper_bottom{
            width: 100%;
            background-color:#E6EAED;
            text-align: center;
            margin-bottom:20px;
        }
        #jyx .wrapper_bottom>a>img{
            width: 1120px;
            height:90px;
            margin:20px 0 10px 0;
        }
</style>