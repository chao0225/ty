<template>
    <div class="zd-app-index">
        <jyxHeader></jyxHeader>
        <!--banner 广告-->
        <div id="banner">
            <div class="swiper">
                <div class="swiper_wrap">
                    <ul>
                        <li v-for="(item,i) in carousel" :key="i"><a :href="item.href"><img :src="item.img" alt=""></a></li>
                    </ul>
                </div>
                <div class="swiper_page">
                    <ul>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                        <li><a href=""></a></li>
                    </ul>
                </div>
                <div class="prev"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/prev.png" alt="" /></div>
                <div class="next"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/next.png" alt="" /></div>
            </div>
        </div>
        <!--wrapper-->
        <div class="wrapper" id="wrap_one">
            <ul>
                <li v-for="(item,i) in wrap1" :key="i">
                    <a :href="item.href" target="_blank"><img v-lazy="item.img"></a>
                    <div class="text">
                        <p>{{item.title}}</p>
                    </div>
                </li>
            </ul>
        </div>
        <!--hello-->
        <div class="hello">
            <h1>欢迎来到涂鸦王国</h1>
            <h2>涂鸦王国是中国人气最高的CG艺术家交流学习平台！</h2>
            <h3>加入我们，与百万画师一起玩涂鸦王国！</h3>
            <h4>作品精选</h4>
        </div>
        <!--works-->
        <div class="works">
            <ul>
                <li v-for="(item,i) in works1" :key="i" @click="getWid(i)">
                    <div class="imgbox">
                        <a href="javascript:;" >
                            <img :src="item.img" alt="">
                            <div class="cove">
                                <img :src="item.img_hot" alt="">
                                <p>{{item.count}}</p>
                            </div>
                        </a>
                    </div>
                    <div class="infobox">
                        <p class="title">{{item.title}}</p>
                        <div class="info">
                            <span>{{item.see}}</span>
                            <span>{{item.love}}</span>
                            <span>{{item.msg}}</span>
                        </div>
                        <div class="userinfo clear">
                            <a :href="item.img_href">
                                <img :src="item.img_sm" alt="">
                                <span>{{item.name}}</span>
                            </a>
                        </div>
                        <div class="tags">
                            <a :href="item.tags1_href" target="_blank">{{item.tags1}}</a>
                            <a :href="item.tags2_href" target="_blank">{{item.tags2}}</a>
                            <a :href="item.tags3_href" target="_blank">{{item.tags3}}</a>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="more">
                <button class="btn" @click="getWork1()">更多</button>
            </div>
        </div>
        <!--hello-->
        <div class="hello">
            <h4>热门作品</h4>
        </div>
        
        <!--hello-->
        <div class="hello">
            <h1>王国绘画学院</h1>
            <h2>涂鸦王国旗下的绘画直播学习平台，汇聚名家讲师，欢迎来学习。</h2>
            <h4><a href="#">了解更多</a></h4>
        </div>
        <div class="hots">
            <a href="#"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/homework/S95.jpg" alt=""></a>
        </div>
        <div class="hello">
            <h1>最新作品</h1>
            <h2>在涂鸦王国上传作品，创建个人主页，展示自我还能获得更多的商业合作机会。</h2>
        </div>
        <!--news-->
        <div id="news">
            <ul class="clear">
                <li v-for="(item,i) in news" :key="i">
                    <a :href="item.href">
                        <img :src="item.img" alt="">
                        <div class="cove">
                            <p>{{item.title}}</p>
                        </div>
                    </a>
                </li>
            </ul>
            <div class="more">
                <a href="#">更多</a>
            </div>
        </div>
        <!--hello-->
        <div class="hello">
            <h1>活动比赛</h1>
            <h2>服务500多家企业和3万多参赛者，我们提供的赛事活动，为行业创意带来新价值！</h2>
            <h3>欢迎参与有奖绘画比赛,获得丰厚奖金奖品！</h3>
            <h4><a href="#">了解更多</a></h4>
        </div>
        <!--wrapper-->
        <div id="wrapper" class="wrapper">
            <ul>
                <li v-for="(item,i) in wrap2" :key="i">
                    <a :href="item.href" target="_blank"><img :src="item.img"></a>
                    <div class="text">
                        <p>{{item.title}}</p>
                    </div>
                </li>
            </ul>
        </div>
        <jyxFooter></jyxFooter>
    </div>
</template>
<script>
    import jyxHeader from "@/components/jyxHeader.vue";
    import jyxFooter from "@/components/jyxFooter.vue";
    export default{
        data(){
            return {
               carousel:[],
               wrap1:[],
               works1:[],
               pageIndex:0,
               wrap2:[],
               news:[]

            }
        },
        components:{
            jyxHeader,
            jyxFooter
        },
        methods:{
            getWid(wid){
                this.$router.push("detail/"+wid)
            }, 
            getWork1(){
                this.pageIndex++;
                var url="http://localhost:3000/works/work?pno="+this.pageIndex;
                this.$http.get(url).then(result=>{
                    console.log(result.data.msg.pageCount);
                    //console.log(result.data.msg.data[0].wid);
                    //this.works1=result.body.msg.data;
                    if(this.pageIndex<=result.data.msg.pageCount){
                        this.works1=this.works1.concat(result.data.msg.data);
                        console.log(this.works1)
                    }else{
                        alert("没有更多信息了")
                    }
                })
            }    
        },
        created(){
            document.body.parentNode.style.overflow = 'auto';
            this.getWork1();
            (async function(self){
                var res=await self.$http.get("http://localhost:3000/index");
                //carousel
                self.carousel=res.data.carousel;
                //console.log(self.carousel);
                //wrap1
                self.wrap1=res.data.wrap.splice(0,3);
                //console.log(self.wrap1);
                //wrap2
                self.wrap2=res.data.wrap.splice(-3);
                //console.log(self.wrap2);
                //news
                self.news=res.data.news;    
            })(this)
        }
    }
</script>
<style scoped>
    body,ul,p,h1,h2,h3,h4,dl,dd,form,input,textarea,select { padding:0; margin:0; font-family:arial; }
    @media screen and (max-width:1440px){
        .zd-app-index{
            width: 1440px;
        }
    }

    .zd-app-index li { list-style:none; }
    .zd-app-index img { border:none;vertical-align:bottom; }
    .zd-app-index a { text-decoration:none; cursor: pointer;}
    .zd-app-index a:hover { text-decoration:none; }

    .zd-app-index .clear { zoom:1; }
    .zd-app-index .clear:after { content:''; display:block; clear:both; }

    /*banner*/
    .zd-app-index #banner{height:330px; background:#111111;}
    .zd-app-index #banner .swiper{ width:1120px; margin:0 auto; position:relative;}
    .zd-app-index #banner .swiper .swiper_wrap{width:100%; overflow: hidden;}
    .zd-app-index #banner .swiper .swiper_wrap ul{width:7840px;}
    .zd-app-index #banner .swiper .swiper_wrap ul li{float:left;}
    .zd-app-index #banner .swiper .swiper_wrap ul li img{ width:100%; height:330px;}
    .zd-app-index #banner .swiper .swiper_page{position:absolute;bottom:20px; left:50%; margin-left:-60px;}
    .zd-app-index #banner .swiper .swiper_page ul li{display:inline-block; width:10px; height:10px; background:#666; border-radius:50%;}
    .zd-app-index #banner .swiper .swiper_page{ position: absolute; bottom: 20px;left:50%;background-color: rgba(0,0,0,0.3);border-radius: 15px;}
    .zd-app-index #banner .swiper .swiper_page ul li{list-style: none;width: 10px;height: 10px;border-radius: 100%;background-color: #fff;float: left;margin: 7px 8px;}
    .zd-app-index #banner .swiper .prev,#banner .swiper .next{ position:absolute; top:50%; z-index:10; margin-top:-19px;}
    .zd-app-index #banner .swiper .prev{ left:20px;}
    .zd-app-index #banner .swiper .next{ right:20px;}

    /*wrapper*/
    .zd-app-index .wrapper{ width:1120px;margin:40px auto 0;}
    .zd-app-index .wrapper ul{display:flex; justify-content:space-between;}
    .zd-app-index .wrapper ul li{width:330px; height:220px;}
    .zd-app-index .wrapper ul li img{height:160px;vertical-align: middle;}
    .zd-app-index .wrapper .text{color:#333; border:1px solid #f1f1f1; text-align:center; padding-top:20px; padding-bottom:20px; border-radius:0 0 3px 3px;}
    .zd-app-index .wrapper .text p{color:#333;font-size:15px;}

    /*hello*/
    .zd-app-index .hello{width:1120px; margin:0 auto; padding:40px 0; box-sizing:border-box; text-align:center;}
    .zd-app-index .hello h1{ font-weight:300; font-size:36px;line-height: 1.2; margin-bottom: 13px;}
    .zd-app-index .hello h2,.hello h3{margin: 0 auto; color: #888; font-size: 16px;font-weight: 500;line-height: 25px;}
    .zd-app-index .hello h4{margin: 0 auto; margin-top: 13px; color: #000; font-size: 16px; margin-bottom: 10px;font-weight: 500;}
    .zd-app-index .hello h4 a{margin-top: 13px; color: #000; font-weight: 500;}
    .zd-app-index .hello h4 a:hover{color: #777;}

    /*works*/
    .zd-app-index .works{width:1120px; margin:0 auto;}
    .zd-app-index .works ul{display:flex; flex-flow:row wrap; justify-content:space-between;}
    .zd-app-index .works ul li{width:204px; height:332px; margin-bottom: 18px; background: #fff; overflow: hidden; border-radius: 4px; box-sizing: border-box; border: 1px solid rgba(0,0,0,.1);}
    .zd-app-index .works ul li .imgbox{position:relative; overflow: hidden;}
    .zd-app-index .works ul li .imgbox a>img{width:100%;}
    
    .zd-app-index .works ul li .imgbox .cove{ opacity:0; width:204px; height:202px; position:absolute;top:0; left:0; display:flex; justify-content:space-between; background:rgba(0,0,0,0.6); z-index:9; transition:all 0.2s linear; }
    .zd-app-index .works ul li .imgbox .cove img{width:20px; height:22px; margin-left:10px;}
    .zd-app-index .works ul li:hover .cove{ opacity:1;}
    .zd-app-index .works ul li .imgbox .cove p{ width:20px; height:20px; border-radius:50%; background:rgba(0,0,0,0.6); color:#fff; font-size:12px; line-height:20px; margin: 5px 5px 0 0;}

    .zd-app-index .works ul li .infobox{ padding-top:5px;}
    .zd-app-index .works ul li .infobox p{ font-size: 12px; height: 25px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; color: #333; text-align: center;}
    .zd-app-index .works ul li .infobox .info{height: 20px; padding: 0px 0 5px; font-size: 12px;text-align: center;}
    .zd-app-index .works ul li .infobox .info span{ padding-left: 20px; color: #b1b1b1; margin-right: 10px;}
    .zd-app-index .works ul li .infobox .info span:nth-child(1){background:url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/eye.png) no-repeat left;}
    .zd-app-index .works ul li .infobox .info span:nth-child(2){background:url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/birth.png) no-repeat left;}
    .zd-app-index .works ul li .infobox .info span:nth-child(3){background:url(https://inling.oss-cn-beijing.aliyuncs.com/illustration/images/msg.png) no-repeat left;}

    .zd-app-index .works ul li .userinfo{padding: 10px; border-top: 1px #f1f1f1 solid;}
    .zd-app-index .works ul li .userinfo img{width: 21px; height: 21px; float:left;  border-radius: 100%;}
    .zd-app-index .works ul li .userinfo span{ float:left; color: #555; font-weight: bold; display: block; overflow: hidden; white-space: nowrap;  text-overflow: ellipsis; font-size: 12px; padding: 1px; padding-left: 6px;}
    .zd-app-index .works ul li .tags{padding: 0 5px;height: 27px; text-align:left;}
    .zd-app-index .works ul li .tags a{margin-right: 5px; padding: .25rem .5rem; font-size: .875rem; line-height: 1.5; border-radius: .2rem;color: #111; background-color: #f8f9fa; border-color: #f8f9fa; transition: background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;}
    .zd-app-index .works ul li .tags a:hover{color: #111; background-color: #e2e6ea; border-color: #dae0e5;}

    .zd-app-index .works .more,#news .more{width:1120px;margin:0 auto; text-align:center;}
    .zd-app-index .works .more .btn,.zd-app-index #news .more .btn{ display: block; width: 100%; color: #111; background-color: #f8f9fa; border-color: #f8f9fa; cursor: pointer; font-weight: 400; text-align: center; white-space: nowrap; vertical-align: middle; border: 1px solid transparent; padding: .375rem 0; font-size: 1rem; line-height: 24px; border-radius: .25rem; transition: background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out; outline:none;}
    .zd-app-index .works .more .btn:hover,#news .more .btn:hover{ color: #111; background-color: #e2e6ea; border-color: #dae0e5;}

    /*hots*/
    .zd-app-index .hots{width:1120px; margin:0 auto;}

    /*news*/
    .zd-app-index #news{width:1120px; margin:0 auto;}
    .zd-app-index #news li{float:left; position:relative;}
    .zd-app-index #news li:first-child img{width:200px; height:200px;}
    .zd-app-index #news li img{width:100px; height:100px;}

    .zd-app-index #news ul li .cove{ opacity:0; width:100%; height:100%; position:absolute;top:0; left:0; background:rgba(0,0,0,0.6); z-index:9; transition:all 0.2s linear; display:flex; justify-content:center; align-items:center;}
    .zd-app-index #news ul li:hover .cove{ opacity:1;}
   .zd-app-index  #news ul li .cove p{ color:#fff; font-size:14px;}

    .zd-app-index #news .more{ margin-top:20px;}
    /*wrapper*/
    .zd-app-index #wrapper{ margin:0 auto 80px;}
    .zd-app-index #wrapper img{ height:198px;}
</style>