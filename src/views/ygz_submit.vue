<template>
<div>
    <jyxHeader></jyxHeader>
    <div class="middle">   
         <div class="fabu">
            <p>发布外包</p>
            <div id="info">基本信息</div>
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                      <label class="layui-form-label mr90" id="item-1-1">标题</label>
                      <div class="layui-input-block">
                        <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input w520 ">
                      </div>
                    </div>
                    <div class="layui-form-item">
                      <label class="layui-form-label mr90" id="item-1-2">用途</label>
                      <div class="layui-input-inline ">
                        <select name="function" lay-verify="required">
                          <option value="">直接选择或搜索</option>
                          <option value="0"></option>
                          <option value="1">画册</option>
                          <option value="2">游戏</option>
                          <option value="3">宣传</option>
                          <option value="4">周边</option>
                          <option value="5">小说</option>
                          <option value="6">个人</option>
                          <option value="7">其他</option>
                        </select>
                      </div>
                    </div>
                    <div class="layui-form-item">
                            <label class="layui-form-label mr90" id="item-1-3">类型</label>
                            <div class="layui-input-inline ">
                              <select name="style" lay-verify="required">
                                <option value="">直接选择或搜索</option>
                                <option value="0"></option>
                                <option value="1">插图</option>
                                <option value="2">封面</option>
                                <option value="3">场景</option>
                                <option value="4">角色设计</option>
                                <option value="5">头像</option>
                                <option value="6">漫画</option>
                                <option value="7">贴纸</option>
                                <option value="8">纸胶带</option>
                                <option value="9">花纹</option>
                                <option value="10">立绘</option>
                                <option value="11">壁纸</option>
                                <option value="12">抱枕</option>
                                <option value="13">其他</option>
                              </select>
                            </div>
                          </div>
                    <div class="layui-form-item" >
                      <label class="layui-form-label mr90" id="item-1-4">风格</label>
                      <div class="layui-input-block">
                        <input type="radio"  name="style" title="填写风格" id="mystyle" checked >
                        <input type="radio"  name="style" title="风格不限"  v-model="fengge">
                        <div class="container" v-show="!fengge">
                          <input type="text" name="title" placeholder="请输入风格" autocomplete="off" class="layui-input w255" id="show">
                        </div>
                      </div>
                    </div>

                    <!--截稿日期-->
                    <div class="layui-form-item" >
                        <div class="layui-inline">
                            <label class="layui-form-label mr90" id="item-1-5">截稿日期</label>
                            <div class="layui-input-inline">
                              <input type="text" class="layui-input" id="test11" lay-vertify="required|date" placeholder="点击选择截稿日期">
                            
                            </div>                                                      
                          </div>
                    </div>
                    <!--单张稿费区间-->
                    <div class="layui-form-item">
                         <div class="layui-inline">
                            <label class="layui-form-label mr70 w85" id="item-1-6">单张稿费区间</label>
                            <div class="layui-input-inline" style="width:100px;">
                                <input type="text"  required  lay-verify="required" autocomplete="off" class="layui-input">
                            </div> 
                            <div class="layui-form-mid">至</div>
                            <div class="layui-input-inline" style="width:100px;">    
                                <input type="text" required  lay-verify="required" autocomplete="off" class="layui-input" >
                            </div>
                            <div class="layui-form-mid">元/张</div>
                         </div>
                    </div>

                    <div class="layui-form-item">
                            <label class="layui-form-label w85 mr70">联系信息<br>(至少填写一项)</label>
                            <div class="layui-input-block">
                                <input type="text" name="QQ" required  lay-verify="required" placeholder="QQ" autocomplete="off" class="layui-input w255">
                                <input type="text" name="WX" required  lay-verify="required" placeholder="微信" autocomplete="off" class="layui-input w255 ml120">
                                <input type="text" name="phone" required  lay-verify="required" placeholder="手机" autocomplete="off" class="layui-input w255 ml120">
                                <input type="text" name="email" required  lay-verify="required" placeholder="邮箱" autocomplete="off" class="layui-input w255 ml120">
                            </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label mr90">应征要求</label>
                        <div class="layui-input-block">
                            <input type="radio" name="request" title="添加要求" >
                            <input type="radio" name="request" title="无" checked>
                            <div class="layui-form-item add">
                                <span>作品数大于</span> <input type="text" name="zuopin" lay-verify="number" autocomplete="off" class="layui-input" value="0" style="width:100px;" >
                              </div>
                              <div class="layui-form-item min">
                                <span>人气数大于</span><input type="text" name="renqi" lay-verify="number" autocomplete="off" class="layui-input" value="0" style="width:100px;" >
                              </div>
                        </div>
                        
                    </div>

                    <div id="info">详细要求</div>
                    <div class="layui-form-item layui-form-text">
                      <label class="layui-form-label mr60" id="item-1-7">需求描述</label>
                      <div class="layui-input-block">
                        <textarea name="desc" placeholder="请输入内容" class="layui-textarea" rows="5" style="width:300px;"></textarea>
                      </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label" id="item-1-8">参考例图</label>
                            <div class="layui-input-block w600h300 layui-upload-drag" id="uploadDemo">
                              <i class="layui-icon layui-icon-upload"> </i>
                              <p>点击上传，或将文件拖拽到此处</p>
                            </div>
                            <div class="myWidth">
                              <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/info.png" alt="">
                              <p>请上传图像</p>
                            </div>
                          </div>
                    <div class="layui-form-item">
                      <div class="layui-input-block">
                        <button class="layui-btn myButton" lay-submit lay-filter="formDemo">提交</button>
                      </div>
                    </div>
                
                </form>
        </div> 
        <div class="notice">
          <div class="content">
            <p class="title">发布须知</p>
            <p>一、为了让画手更快了解你的需求，请尽量描述清楚</p>
            <p>1、你是谁（公司或个人）</p>
            <p>2、稿子的用途类型</p>
            <p>3、需求的风格（可以上传例图）</p>
            <p>4、稿子的截止日期</p>
            <p>5、稿子的数量、尺寸、分辨率、出血等</p>
            <p>6、是否需要试稿（有偿或无偿）</p>
            <p>二、发布一次显示的有效期为12天，过期自动清楚</p>
          </div>
          <ul id="list">
            <li class="active menuItem"><a href="#item-1-1">标题</a></li>
            <li class="menuItem"><a href="#item-1-2">用途</a></li>
            <li class="menuItem"><a href="#item-1-3">类型</a></li>
            <li class="menuItem"><a href="#item-1-4">风格</a></li>
            <li class="menuItem"><a href="#item-1-5">截稿日期</a></li>
            <li class="menuItem"><a href="#item-1-6">稿费</a></li>
            <li class="menuItem"><a href="#item-1-7">需求描述</a></li>
            <li class="menuItem"><a href="#item-1-8">参考例图</a></li>
          </ul>
        </div>    
      
    </div> 
    <jyxFooter></jyxFooter>
</div> 
</template>

<script>
    import jyxHeader from "@/components/jyxHeader.vue";
    import jyxFooter from "@/components/jyxFooter.vue";
    export default({
        data(){
            return{
              fengge:false,
              yingzheng:true,
            }
        },
        components:{
            jyxHeader,
            jyxFooter
        },
        methods:{

        },   
        created() {
            document.body.parentNode.style.overflow = 'auto';
            layui.use(['form','upload','laydate'], function(){
            var form = layui.form,upload=layui.upload,laydate=layui.laydate; 

            upload.render({
              elem:'#uploadDemo'
              ,url:'/upload/'
              ,done: function(res, index, upload){
                if(res.code == 0){ //上传成功 
                  var tr = demoListView.find('tr#upload-'+ index)
                  ,tds = tr.children();
                  tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
                  tds.eq(3).html(''); //清空操作
                  return delete this.files[index]; //删除文件队列已经上传成功的文件
                }
                this.error(index, upload);
              }
              ,error: function(index, upload){
                var tr = demoListView.find('tr#upload-'+ index)
                ,tds = tr.children();
                tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
                tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
              }
            })
            //执行一个laydate实例
            laydate.render({
              elem: '#test11' //指定元素
            });
            //监听提交    
            form.on('submit(formDemo)', function(data){
                layer.msg(JSON.stringify(data.field));
                return false;
            })
          });
                   
          $("#list>li").click(function(){ 
              console.log(111);
              var li = $(this);
              if(!li.hasClass("active")){
                li.addClass("active");
                li.siblings().removeClass("active");
              }
              $(".notice").addClass("fixed");
          })
            
          $(document).ready(function(){
            $("#mystyle").click(function(){
              $(".container").toggle();
            })
          })
        },mounted() {
            
        },
    })
  
</script>

<style scoped>
      .body{
    width:100%;
    min-width: 1400px;
    position: relative;
  }
  .header{
    width:100%;
    min-width: 1400px;
    height:50px;
    background:black;
    margin-bottom:20px;
  }
  .middle{
      width:1120px;
      margin:0 auto;
  }
  .middle:after{
      content:"";
      display:block;
      clear:both;
  }
  .fabu{
    width:800px;
    background:#fff;
    border-radius: 5px;
    margin-bottom:30px;
    float:left;
  }

  .fabu>p{ 
      font-weight:bold;
      font-size: 22px;
      font-weight: bold;
      text-align: center;
      margin: 20px auto;
  }
  .mr90,.mr70,.mr60{
      margin-right: 60px;
  }

  .w85{
      width:100px;
  }

  .w520,.w255{
      width:300px;
  }
  .layui-input-block .w255{  margin-bottom: 20px; }
  .ml120{
      margin-left: 110px;
  }


  .layui-form-label {
      text-align:right;
      margin-left:60px;
  }

  .w600h300{
      border:1px dashed #ccc;
      width:300px;
      margin-left: 60px;
  }
  .myWidth{
      width:300px;
      height:80px;
      text-align:center;
      margin-left:220px;
      padding-top:10px;
  }
  .myWidth img{
      width:30px;
      height:30px;
      margin-bottom:10px;
  }
  .myWidth p{
      color:#ccc;
  }
  .myButton{
      width:300px;
      height:38px;
      line-height:38px;
      border-radius: 2px;
      margin-left: 110px;
  }
  #info{
      font-size:18px;
      font-weight:bold;
      margin-bottom:40px;
      margin-left:20px;
  }
  div.layui-input-block>select>option{
    width:195px;
    height:38px;
  }

  /*发布须知*/
  .notice{
    width:300px;
    height:700px;
    background:#fff;
    border-radius: 5px;
    margin-left:20px;
    float:right;
  }
  .content{
      width:270px;
      height:500px;
      background:#f8f9fd;
      margin:15px;
      padding:15px;
      border-radius: 5px;
  }
  .title{
      text-align:center;
      font-size:16px;
      padding-bottom:10px;
      color:#333 !important;
  }
  .content p{
    line-height:28px;
    color:#666;
  }
  .notice ul{
      width:270px;
      height:294px;
      margin:15px;
      padding:15px;
  }
  .notice ul li{
      padding:7px;
      color:#666; 
  }
  .active{
      border-left:3px solid #5079b7;
      background:#eee;
  }
  .fixed{
      position: fixed;
      top:0px;
      right: 150px;
  }
  .container{
      margin-top:10px;
      margin-left:70px;
  }
  .add,.min{
      width: 300px !important;
      margin: 5px 100px !important;
  }
  .add>span,.min>span{
      float: left;
      line-height: 38px;
  }

</style>

