<template>
    <div id="zjl-main">
    <jyxHeader></jyxHeader>
            <div style="height:56px;">
                <div id="index">
                    <div id="header">
                        <div id="header_left">
                            <a href="#">
                                <img :src="user.avatar" alt="">
                            </a>
                            <span>{{user.user_name}}</span>
                        </div>
                        <div id="header_center">
                            <span>{{big[index].title}}</span>
                        </div>
                        <div id="header_right">
                            <a href="#" @click="prev()">◀</a>
                            <a href="#" @click="next()">▶</a>
                        </div>
                    </div>
                </div> 
            </div>
        <div id="img">
                <div>
                
                    <div>
           
                        <img :src="big[index].img" alt="" >
         
                        <p>版权提示：此作品版权属作者所有，未经许可请勿商用。</p>
                    </div>
                
                    
                </div>
        </div>
        <div id="comments" class="clearfix">
            <div id="comments_left">
                <div>
                    <div>
                        <span></span>
                    </div>
                    <div id="newHeader">
                            <div id="new_left">
                                <p>{{big[index].title}}</p>
                            </div>
                            <div id="new_right">
                                <div>
                                    <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/1161550.jpg" alt=""><br>
                                    微信扫一扫<br>
                                    小程序里打开此作品
                                </div>
                            </div>
                    </div>
                    <div class="info1">
                        <p class="p1">
                           <span>浏览数{{user.pageview
                            }}</span>
                           <span>人气{{user.renqi
                            }}</span>  
                           <span>评论{{comment.length}}</span>
                        </p>
                        <p class="p1">属性: &nbsp; 原创作品</p>
                        <p class="p1">时间: &nbsp; 2019/10/10 10:49</p>
                        <p class="p1">来自: &nbsp; PC网站</p>
                    </div>
                </div>
                <div class="lovelist">
                    <div class="tit">
                        <p>喜欢  ({{comment.length}})</p>
                        <button class="love btn">♥ 喜欢</button>
                    </div>
                    <div class="list">
                        <ul  id="love">
                            <li v-for="(item,i) in comment" :key="i">
                                <a href="#">
                                    <img :src="item.address"  :title="item.user_name"> 
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="comment">
                    <div class="tit">
                            评论（0）
                    </div>
                    <div class="viewPage_discuss">
                       <div class="discuss-text clearfix">
                            <div class="imgbox">
                                <img  :src="comment[0].address">
                            </div>
                            <div class="contentbox ">
                            <div class=" contentwrap clearfix">
                                <textarea id="texts" placeholder="有什么感想，你也来说说吧" v-model="comments" required>

                                </textarea>
                            </div>
                            <div class="commbtnbox">
                                <div style="float: left;margin-right: 5px">
                                    <button id="commentBtn" @click="commentBtn()">发布</button>
                                </div>
                                <div  class="comment-emoji" style="float: left;">
                                    <span class="text">表情</span>
                                </div>
                            </div>
                       </div>

                       </div>

                    </div>
                    <div id="comments1" >
                        <div class="discuss-pl">
                            <div class="plOne clearfix" v-for="(item,i) in comment" :key="i">
                                <div class="plArea">
                                    <div class="imgbox">
                                        <a href="#">
                                            <img :src="item.address" />
                                        </a>
                                    </div>
                                    <div class="contentbox">
                                        <p class="p1">{{item.user_name}}</p>
                                        <p class="p2">{{item.comment}}</p>
                                        <div class="tool">
                                            <a href="#">赞（）</a>
                                            <a href="#">回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div style="padding:40px;color:#ccc;text-align:center;display:none" class="d1" >
                                <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/info.png" alt="">
                                <div style="margin-top:5px">
                                        还没有评论!
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="comments_r">
                <div id="comments_right">
                    <div id="right_head">
                            <a href="#" id="img_head">
                                <img :src="user.avatar" alt="">
                            </a>
                             <div>
                                <h3>{{user.user_name
                                    }}</h3>
                                <p>{{user.address
                                    }}</p>
                                <p>人气{{user.renqi
                                    }}</p>
                            </div>
                    </div>
                    </div>
                    <div class="right_gexin">
                            {{user.signature}}
                    </div>
                    <div class="rz">
                        <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/v_2.png" alt="">
                        <span>{{user.renzheng}}</span>
                    </div> 
                    <div class="tool">
                        <button class="btn btn-dark btn-sm  btn1">私信</button>
                        <button class="btn btn-dark btn-sm btn1">工作联系</button>
                    </div> 
                    <div class="ad_lunbo">
                        <a href="#" class="lubo"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/guanggao1.jpg" alt=""></a>
                        <a href="#" class="lubo"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/guanggao2.jpg" alt=""></a>
                        <a href="#" class="lubo"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/guanggao3.jpg" alt=""></a>
                        <a href="#" class="lubo"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/guanggao4.jpg" alt=""></a>
                    </div> 
                    
                    </div>
                    
         </div>
         <div class="wrapper f-pt20">
                <div id="bottom_d1" class="TheWorksCrumbs clearfix">
                    <span>
                        更多作品
                    </span>
                    <a href="#">更多</a>
                </div>
                <div id="bottom_d2" class="TheWorksList">
                    <ul class="clearfix">
                        <li v-for="(item,i) in bottom" :key="i">
                            <div class="imgbox">
                                <span></span>
                                <span></span>
                                <a href="#">
                                    <img :src="item.img" alt="">
                                </a>
                            </div>
                            <div class="infobox">
                                <p class="titles">{{item.title}}</p>
                                <div class="info clearfix  noline">
                                    <span class="icon-imgbg-hpw_see hpw_see">{{item.look}}</span>
                                    <span class="icon-imgbg-hpw_love hpw_love">{{item.love}}</span>
                                    <span class="icon-imgbg-hpw_pl hpw_pl">{{item.comment}}</span>
                                </div>
                                <div class=" userinfo">
                                    <p class="time">{{item.commentTime}}</p>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                    <a href="#" class="btn btn-light btn-block bottom">访问主页</a>
                </div>
         </div>


        <jyxFooter></jyxFooter>     
      </div>
</template>
<script>
    import jyxHeader from "@/components/jyxHeader.vue";
    import jyxFooter from "@/components/jyxFooter.vue";
    import qs from 'qs'


    export default {
        data(){
            return{
                user:[{avatar:""},{address:""}],
                big:[{title:""}],
                bottom:[],
                comment:[{address:""}],
                index:0,
                comments:"",
                isshow:false,
                ishien:true
            }
        },
        props:["wid"],
         components:{
            jyxHeader,
            jyxFooter
        },
        methods:{
            prev(){
             if(this.index>0){
                
                this.index--;
               
             }
            },
             next(){
                 if(this.index<this.big.length-1){
                        this.index++;
                     
                 }
            },
            commentBtn(){
               this.$http.post("http://localhost:3000/img/addcomment",
               qs.stringify({
                   comment:this.comments,
                   wid:this.wid  
                   })
               ).then(res=>{
                   if(res.data.code==1){
                       alert("评论成功")
                       this.comments=""
                   }
               }) 
            }
            
        },
        created() {
            (async function(self){
                 var res=await self.$http.get("http://localhost:3000/img/user?wid="+self.wid);
                self.user = res.data[0]; 
            

                var res = await self.$http.get("http://localhost:3000/img/big?wid="+self.wid);
                self.big = res.data; 
                
                var res = await self.$http.get("http://localhost:3000/img/bottom");
                self.bottom = res.data; 
            
                var res = await self.$http.get("http://localhost:3000/img/comment?wid="+self.wid);
                self.comment = res.data; 
            
        
            })(this)
            /*
            if(this.comment.length>=0){
                        this.isshow=true
                        this.ishien = false
                }*/
        }
    }
</script>
<style scoped>
    *{margin:0;padding:0;list-style: none;text-decoration: none;box-sizing: border-box;}
p{margin:0 !important;}
    @media screen and (max-width:1440px){
        #zjl-main{
            width: 1440px;
        }
    }
.btn:hover {
    text-decoration: none;
}
.wrapper{width: 1120px;
    margin: 0 auto;}
.f-pt20{    padding-top: 20px;}
.btn-dark {
    color: #fff;
    background-color: #343a40;
    border-color: #343a40;
}
.btn{cursor: pointer;
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    transition: background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    padding: .25rem .5rem;
    font-size: .875rem;
    line-height: 1.5;
    border-radius: .2rem;
}
body{font: 14px Helvetica Neue,Helvetica,PingFang SC,\5FAE\8F6F\96C5\9ED1,Tahoma,Arial,sans-serif;}
#zjl-main{background-color: #e9ecef;}
#index{height: 56px;box-shadow: 0 0px 2px rgba(0,0,0,.2);background: #1B1B1B;}
#header{display:flex;justify-content: space-between;margin:0 auto;width:1200px;margin-left:120px;}
#header>div{height: 56px;}
#header_left img{width:30px;height:30px;float:left;margin-top:15px;}
#header_left span{color: #fff;font-size: 16px;line-height: 56px;padding-left:5px;}
#header_center span{color: #fff;font-size: 16px;line-height: 56px;}
#header_right>a{
    margin-top:10px;
    box-sizing: border-box;
    display: block;
    background: #666;
    color: #fff;
    width: 30px;
    height: 30px;
    border-radius: 2px;
    padding: 5px;
    margin-left: 5px;
    text-align: center;
    float: left;}
#img{background:#303030}
#img>div:first-child{width: 1120px;margin: 0 auto;}
#img>div:first-child>div{text-align: center;padding-top: 10px;}
#img>div:first-child>div>p{color: #fa0a4e;
    text-align: center;
    padding: 40px 0 30px;
    font-size: 12px;
    }
#comments{width: 1120px;margin: 0 auto;margin-top:20px;display:flex;justify-content: space-between;}
#newHeader{display: flex;
    flex-direction: row;
    justify-content: space-between;}
#comments_left{width: 800px;
    margin-top: 20px;
    
}
#comments_left>div:first-child{padding: 45px 25px 25px;background:#fff;}
#comments_r{width: 300px;

    margin-top: 20px;}
#comments_right{
    background:#fff;
    padding: 25px;
}
.discuss-text {
    padding-bottom: 10px;
    padding: 0 25px 20px;
}
#texts {
    height: 70px;
    width: 680px;
    border: 1px #ccc solid;
    float: left;
    overflow: hidden;
    outline: none;
    font-size: 14px;
    padding: 5px;
    border-radius: 3px;
    background: #fff;
    margin-bottom:5px;
}
.discuss-text .contentbox {
    float: left;
}
.contentbox {
    position: relative;
}

.discuss-text .imgbox {
    width: 50px;
    height: 50px;
    float: left;
    margin-right: 20px;
    overflow: hidden;
    border-radius: 3px;
}
.clearfix:after {
        content: "";
        height: 0;
        visibility: hidden;
        display: block;
        clear: both;
}
.discuss-pl .plOne {
    padding-top: 10px;
    padding-bottom: 30px;
}
.discuss-pl .plArea {
    position: relative;
    padding-left: 70px;
}
.discuss-pl .plArea .imgbox {
    position: absolute;
    left: 0;
    top: 0;
    width: 50px;
    height: 50px;
    overflow: hidden;
    border-radius: 50%;
    border:none;
}
.discuss-pl .plArea .imgbox img {
    width: 100%;
    height: 100%;
    border-radius: 100%;
}
.contentbox {
    position: relative;
}
.discuss-pl .plArea .p1 {
    line-height: 25px;
    padding-bottom: 5px;
}
.discuss-pl .plArea .p2 {
    color: #666;
    padding-bottom: 6px;
    line-height: 25px;
    font-size: 14px;
    overflow: hidden;
    word-break: break-all;
}
.discuss-pl .plArea .tool {
    position: absolute;
    top: 0;
    right: 0;
}
.discuss-pl .plArea .tool a {
    color: #aaa;
    margin-right: 5px;
    font-size: 12px;
}

#new_right{    width: 120px;
    font-size: 12px;
    color: #333;
    text-align: center;
    font-weight: bold;}
#new_right img{width:100px;}
.info1{color: #888;}
.info1 .p1{    line-height: 30px;
    padding-bottom: 5px;}
#right_head{display:flex;}
#comments_r p{font-size:14px;}
#img_head{display:block;}
#img_head img{width: 85px;
    height: 85px;
    margin-right: 15px;
    border-radius: 4px;}
#right_head>div>h3{font-size: 18px;
        font-weight: 650;
        padding-bottom: 10px;}
#right_head>div>p{color: #666;
   }
.right_gexin{
    font-size:14px;
    background: #fff;
    padding: 0 25px 20px;
    border-bottom: 1px #f0f0f0 solid;
    color: rgb(102, 102, 102);
    word-break: break-all;}
#comments_r .rz{
    font-size:14px;
    background: #fff;
    padding: 20px;
    border-bottom: 1px #f0f0f0 solid;
    display: flex;
    flex-direction: row;
    justify-content: flex-start;
    align-items: center;}
#comments_r .rz>img   {width: 22px;
        margin-right: 3px;}
#love{padding: 20px;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;}
#love>li {width: 40px;
    margin: 3px;}
#love>li img{
        width: 40px;
        height: 40px;
}
#commentBtn{
    padding: .25rem .5rem;
    font-size: .875rem;
    line-height: 1.5;
    border-radius: .2rem;
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
    cursor: pointer;
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    transition: background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.comment-emoji{
    width: 66px;
    height: 28px;
    color: #222;
    position: relative;
    z-index: 101;
    font-size: 14px;
    text-align: center;
    line-height: 23px;
    margin-top: 0px;
    cursor: pointer;
    padding: 0;
    background: #fff;
}
.comment-emoji .text {
    font-size: 12px!important;
    line-height: 27px;
}
#comments_r .tool{
    background: #fff;
    padding: 20px 25px;
    display: flex;
    justify-content: flex-start;}
.tool .btn1{    margin: 0 3px;}
.ad_lunbo{    margin-top: 15px;}
.ad_lunbo .lubo img{    width: 100%;
    margin-bottom: 5px;}
.lovelist {
        margin-top: 15px;
        background: #fff;
}
.comment{background: #fff;margin-top: 15px;}
.tit{font-size: 16px;
    padding: 15px 25px;
    border-bottom: 1px #f0f0f0 solid;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;}
.love{line-height: 34px;
    color: #fff;
    background: #e90080;
    width: 100px;
    height: 34px;
    display: block;
    text-align: center;
    border-radius: 3px;
    padding: 0;
    cursor: pointer;
    font-weight: 400;
    border: 1px solid transparent;
}
.list ul{padding: 20px;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;}
.viewPage_discuss {
    padding: 25px 0px 0 0;
}
.discuss-pl{background: #fff;
    padding: 25px 25px 0;
    border-top: 1px #f0f0f0 solid;}
.d1>img{width: 30px;}
#bottom_d1>span{font-style: normal;
    color: #333;
    display: inline-block;
    font-size: 16px;
    position: relative;}
#bottom_d1>span ::after {
        content: '';
        position: absolute;
        bottom: -2px;
        left: 0;
        right: 0;
        height: 1px;
        background: #333;
    }
#bottom_d1>a{width: 55px;
        height: 25px;
        color: #fff;
        background: #333;
        display: block;
        float: right;
        text-align: center;
        line-height: 25px;
        font-size: 12px;
        font-weight: normal;
        border-radius: 10px;}
 #bottom_d1>a:hover {
            background: #cbced0;
        }
.TheWorksList{overflow: hidden;
    width: 1120px;}
.TheWorksList ul{width: 1160px;}
.clearfix {
    zoom: 1;
}
.imgbox{width: 204px;
    height: 204px;
    position: relative;
    background-color: #000;}
.imgbox img{
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
        transition: all 200ms ease-in-out;
    }
.clearfix>li{width: 204px;
    float: left;
    position: relative;
    margin-bottom: 14px;
    margin-right: 25px;
    background: #fff;
    overflow: hidden;
    border-radius: 4px;
    box-sizing: border-box;
    transition: all 150ms ease-in-out;
    border: 1px solid rgba(0,0,0,.1);}
.clearfix>li:hover{
        box-shadow: 0 0 10px rgba(0,0,0,.2);
       
    }
.TheWorksCrumbs {
        margin: 25px 0 12px;
        padding: 0 0 10px;
        height: 25px;
        line-height: 34px;
        box-sizing: initial;
        position: relative;
        border-bottom: 1px #e4e4e4 solid;
    }
.clearfix>li:hover imgbox{background:#ddd;}
.infobox{padding: 9px;}
.infobox .titles{font-size: 12px;
    padding-bottom: 8px;
    display: block;
    height: 25px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #333;
    text-align: center;}
.noline {
        border-bottom: 1px #fff solid;
    }
.info {
        height: 20px;
        padding: 0px 0 5px;
        font-size: 12px;
        padding-bottom: 8px;
        text-align: center;
    }
.time{font-size: 12px;
    color: #bebebe;
    line-height: 12px;}

.TheWorksList li .noline {
    border-bottom: 1px #fff solid;
}
.TheWorksList li .userinfo {
    padding-top: 8px;
    border-top: 1px #eee solid;
}
.TheWorksList li .info {
    height: 20px;
    padding: 0px 0 5px;
    font-size: 12px;
    padding-bottom: 8px;
    text-align: center;
}
.TheWorksList li .info .hpw_see {
    background-repeat: no-repeat;
    background-position: left center;
    padding-left: 20px;
    color: #b1b1b1;
    margin-right: 15px;
}
.icon-imgbg-hpw_see {
    background-image: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/icon-eye.png);
    background-size: auto 12px;
}
.TheWorksList li .info .hpw_love {
    background-repeat: no-repeat;
    background-position: left center;
    padding-left: 20px;
    color: #b1b1b1;
    margin-right: 15px;
}

.icon-imgbg-hpw_love {
    background-image: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/icon-love.png);
    background-size: auto 12px;
}
.TheWorksList li .info .hpw_pl {
    background-repeat: no-repeat;
    background-position: left center;
    padding-left: 20px;
    color: #b1b1b1;
    margin-right: 15px;
}

.icon-imgbg-hpw_pl {
    background-image: url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/icon-msg.png);
    background-size: auto 12px;
}

.clearfix {
        zoom: 1;
    }
.btn-block {
        display: block;
        width: 100%;
}
.btn-light {
    color: #111;
    background-color: #f8f9fa;
    border-color: #f8f9fa;
}
.bottom{margin-bottom:20px;}
.bottom:hover{    color: #111;
    background-color: #e2e6ea;
    border-color: #dae0e5;}


</style>    