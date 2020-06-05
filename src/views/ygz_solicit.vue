<template>
<div>         <jyxHeader></jyxHeader>
     <div class="header">
  <div class="header-left">
    <p>任务信息</p>
    <div class="choose">
        <span class="title">排序:</span>
        <a href="#" class="place">按发布时间</a>
        <a href="#">按截稿时间</a>
        <a href="#">按稿酬预算</a>
    </div>
    <div id="fuqi">
	    <div class="myStyle"><span class="title">类型:</span></div>
		<div class="my_style">
			<a href="#" class="place">全部</a>
			<a href="#">插图</a>
			<a href="#">封面</a>
			<a href="#">场景</a>
			<a href="#">角色设计</a>
			<a href="#">头像</a>
			<a href="#">漫画</a>
			<a href="#">贴纸</a>
			<a href="#">纸胶带</a>
			<a href="#">花纹</a>
			<a href="#">立绘</a>
			<a href="#">壁纸</a>
			<a href="#" class="baozh">抱枕</a>
			<a href="#">其他</a>
		</div>
    </div>
  </div>
  <div class="middle">
     <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/ban.jpg" alt="" /> 
  </div>
  <div class="list">
    <ul class="list_one">
	    <li v-for="(result,i) in list" :key="i" >
            <p class="tense">
              <span>{{str}}</span>
              <a href="#">{{result.title}}</a>
              <span>{{result.price}}&nbsp;<span>RMB/张</span></span>
            </p>
            <p class="info">{{result.classd}}·{{result.usaged}}&nbsp;&nbsp; | &nbsp;&nbsp;{{result.styled}} &nbsp;&nbsp;|&nbsp;&nbsp; {{result.utime}} 截稿</p> 
            <p class="time">
              <span><a href="#">{{result.uname}}</a>&nbsp;&nbsp;/&nbsp;&nbsp;{{result.subdata}} 发布</span>
              <span>{{result.people}}人应征</span>
            </p>
           </li>
    </ul>
    
    <div class="pge">
        <a href="#" v-if="onClass>0" @click="first(1)">首页</a>
        <a href="#" @click="pagePrev(tem1)" v-if="onClass>0">上一页</a>
        <a href="#" v-for="(pno,index) in pnos" :key="index" v-text="pno" @click="pageChange(pno)" :class="{on:index===onClass?true:false}"></a>
        <a href="#" class="pgea" @click="pageNext(tem1)" v-if="onClass!==pageCounts-1">下一页</a>
        <a href="#" class="pgea" @click="last(pageCounts)" v-if="onClass!==pageCounts-1">尾页</a>
    </div>
  </div>
  <div class="header-right">
     <div class="ren" v-if="true">
      <button class="fb"><router-link to="/ygzSubmit">发布任务</router-link></button>
      <button class="gz">工作中心</button>
     </div>
      <p class="gonggao">公告</p>
      <p class="yijian">王国工作区改版上线测试中，小伙伴们有任何建议或疑问都可以反馈给王国菌或右下角的“意见反馈”。<br>王国菌微信号：poocg003<br>为了更好为有绘画梦想的人服务，我们一直在努力！</p>
      <p class="shijian">2019年08月18日</p> 
      <p class="hao">微信公众号</p>
      <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/wx.jpg" id="myImg">
      <a href="#"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/ind.jpg" class="myImg1"></a>
      <a href="#"><img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/xy.jpg" class="myImg2"></a>   
  </div>
</div>
</div>
</template>

<script>
    import jyxHeader from "@/components/jyxHeader.vue";
    import jyxFooter from "@/components/jyxFooter.vue";
    export default({
        data(){
            return{
                str:'进行中',
                results:[],
                list:[],
                aid:1,
                pnos:this.pnos,
                onClass:0,
                tem:0,
                tem1:1,
                 pageCounts:self.pageCounts
            }
        },
        created() {
            document.body.parentNode.style.overflow = 'auto';
            var self=this;
            $.ajax({
                url:"http://localhost:3000/solicit/list",
                type:"get",
                dataType:"json",
                success:function(res){
                     console.log(res);
                    self.results=res.data;
                    self.list=res.data;     
                    console.log(self.results);
                    console.log(self.list);            
                    self.pageCounts=parseInt(res.pageCount);
                    var pnos=[];
                    
                    for(var pno=1;pno<self.pageCounts+1;pno++){
                        pnos.push(pno);
                    }
                    self.pnos=pnos;
                    console.log(pnos);
                }
            })
        },
        components:{
            jyxHeader,
            jyxFooter
        },
        methods:{           
            pageChange(index){
                this.tem=index;
                var self=this;
                var url="http://localhost:3000/solicit/list?pno="+index;
                this.$http.get(url).then(result=>{
                    self.list=result.data.data;
                     console.log(self.list);
                })
                this.onClass=index-1;
                this.tem1=index;
               console.log(index);
            },
            pagePrev(index){
                index--;
                var url="http://localhost:3000/solicit/list?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                    console.log(this.list);
                })
                this.onClass=index-1;
                this.tem1=index;
                console.log(index);
            },
            pageNext(index){
                index++;
                var url="http://localhost:3000/solicit/list?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                    console.log(this.list);
                })
                this.onClass=index-1;
                this.tem1=index;
                console.log(index);
            },
            first(index){
                var url="http://localhost:3000/solicit/list?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                 this.tem1=index;
                console.log(index);
            },
            last(index){
               var url="http://localhost:3000/solicit/list?pno="+index;
                this.$http.get(url).then(result=>{
                    this.list=result.data.data;
                })
                this.onClass=index-1;
                 this.tem1=index;
                console.log(index);
            }
        }
        
    })
</script>

<style scoped>
    /*左上*/
    body,div,p,ul,li{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
body{background:#E9ECEF;}
a{text-decoration: none;}
li{list-style:none;}
div.header{width:1120px;margin:0 auto;position:relative;margin-top:20px;}
div.header-left{width:800px;height:240px;padding-top:30px;background:#fff;border-radius:5px;}
div.header-left>p{font-size:20px;padding-left:18px;padding-bottom:20px;}
span.title{font-size:14px;padding-left:18px;padding-right:15px;}
div.choose{margin-bottom:45px;}
div.header-left a{border:1px solid #868e96;border-radius:5px;color:#868e96;font-size:14px;padding:5px 7px;margin-right:5px;display:inline-block;}
div.header-left a:hover{background:#868e96;color:white;}
div.header-left a.place{background:black;color:white;}
div.header-left a.baozh{top:30px;}
.myStyle{float:left;}
.my_style{float:right; width:730px;}
.my_style a{margin-bottom:8px;}
#fuqi{display:block;content:"";clear:both; }
/*右上*/
div.ren{
    margin-left:28px;
    margin-bottom:40px;
}
.fb{
    background:#FEC007;
    font-size:1.25rem;
    color:black;
    padding:10px 20px;
    border-radius: 6px;
    border:none;
    margin-right:5px;
}
.gz{
    background:black;
    font-size:1.25rem;
    color:white;
    padding:10px 20px;
    border-radius: 6px;
    border:none;
}
div.header-right{width:300px;position:absolute;top:0;left:820px;padding-top:25px;border-radius:5px;background:#fff;}
p.gonggao{text-align: center;}
p.yijian{padding:22px;font-size:14px;color:#868e96;line-height:28px;}
p.shijian{padding-left:160px;color:#868e96;padding-bottom:28px;}
p.hao{text-align:center;margin-bottom:26px;}
#myImg{margin-bottom:28px;margin-left:21px;}
img.myImg1{width:300px;height:358px;border-radius: 5px;margin-bottom:10px;}
img.myImg2{width:300px;height:170px;border-radius: 5px;}
/*中间图片*/
div.middle img{width:800px;height:150px;margin-top:20px;margin-bottom:12px;border-radius:5px;}
/*征稿详情*/
.list{width:800px;height:150px;}
.list_one{background:#fff;border-top-left-radius:5px;border-top-right-radius:5px;}
.list_one li {padding:20px;}
.tense a{color:#000;}
.tense>span:first-child{color:#155724;background:#d4edda;font-size:12px;width:56px;height:25px;padding:6px 8px;line-height:25px;border-radius:4px;margin-right:5px;}
.tense span:nth-child(2){font-size:18px;}
.tense span:nth-child(3){display:block;float: right;color:rgb(246,161,30);font-size:20px;line-height: 25px;font-weight: bold;}
.tense span:nth-child(3)>span{color:#999;line-height: 25px;font-weight: normal;font-size: 16px;}
.tense{margin-bottom:20px;}
.info{margin-bottom:30px;}
.info{color:#999;font-size:14px;}
.time{height:33px;background:#F7F7F7;font-size:12px;border-bottom:1px dashed #999;line-height:33px;color:#999;}
.time span a{color:#4095D7;}
.time span:nth-child(2){display:block;float:right;}
.pge{text-align: center;padding-bottom:30px;}
.pge>.on{
    background: #ffbb33;
    color: #fff;
    border: 1px #ffbb33 solid;
}
.pge>a{
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
</style>