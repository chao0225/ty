<template>
    <div class="jyxErr">
        <div class="head404"></div>
 
   	    <div class="txtbg404">
 
            <div class="txtbox">
 
                <p>对不起，您请求的页面不存在、或已被删除、或暂时不可用</p>
 
                <p class="paddingbox">请点击以下链接继续浏览网页</p>
 
                <p>》<a style="cursor:pointer" onclick="history.back()">返回上一页面</a></p>
 
                <p>》<a href="#">返回网站首页</a></p>
 
            </div>
 
        </div>
    </div>
</template>
<script>
    export default({
        data(){
            return{}
        },
        methods:{
            
        }
    })
</script>
<style scoped>
    .jyxErr{
        height: 800px;
        overflow: hidden;
        background-color:#494949;
    }
    .jyxErr .head404{
        width:580px;
        height:234px; 
        margin:50px auto 0 auto; 
        background:url("https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/head404.png") no-repeat; 
        } 
    .jyxErr .txtbg404{ 
        width:499px; 
        height:169px; 
        margin:10px auto 0 auto; 
        background:url("https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/jyx-active/txtbg404.png") no-repeat;
        }
    .jyxErr .txtbg404 .txtbox{ 
        width:390px; 
        position:relative; 
        top:30px; 
        left:60px;
        color:#eee; 
        font-size:13px;
        } 
    .jyxErr .txtbg404 .txtbox p {
        margin:5px 0; 
        line-height:18px;
        } 
    .jyxErr .txtbg404 .txtbox .paddingbox { 
        padding-top:15px;
        }
    .jyxErr .txtbg404 .txtbox p a { 
        color:#eee; 
        text-decoration:none;
        } 
    .jyxErr .txtbg404 .txtbox p a:hover { 
        color:#FC9D1D; 
        text-decoration:underline;
        }
</style>