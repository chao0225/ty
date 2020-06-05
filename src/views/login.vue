<template>
    <div class="login">
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow" style="text-align:left">
      <h5 class="my-0 mr-md-auto  "><a href="/"><img src="http://gracgimg.oss-cn-beijing.aliyuncs.com/logo2.jpg" width="120"></a></h5>
     <!-- <nav class="my-2 my-md-0 mr-md-3 hides ">
        
        <a class="p-2 text-dark " href="/login/reg">注册</a>
      </nav>
      <a class="btn btn-outline-primary btn-sm  hides " href="/login">登录</a>
      -->
    </div>

    <div class="body2" style="width: 700px;margin: 0 auto;">
    <form class="form-signin">
      <div class="text-left mb-4">
        <h1 class="welcome">验证码登录</h1>  
        <div class="description">提示：未注册的号码将会创建一个新账号</div>
      </div>

      
        <div class="form-label-group">
        <label for="inputEmail"><b id="gdivtxt">{{country}}</b> <a href="javascript:;"  @click="local"> 更换</a></label>

        <div id="gdiv" style="display: none;" v-show="isShow">
    <select class="form-control" id="guojiaList">
      <option value="86" selected="">中国大陆</option> 
      <option value="00852">香港特别行政区</option> 
      <option value="00853">澳门特别行政区</option> 
      <option value="00886">台湾地区</option> 
      <option value="001">美国</option> 
      <option value="0032">比利时</option> 
      <option value="0061">澳大利亚</option> 
      <option value="0033">法国</option> 
      <option value="001">加拿大</option> 
      <option value="0081">日本</option> 
      <option value="0065">新加坡</option> 
      <option value="0082">韩国</option> 
      <option value="0060">马来西亚</option> 
      <option value="0044">英国</option> 
      <option value="0039">意大利</option> 
      <option value="0034">西班牙</option> 
      <option value="0049">德国</option> 
      <option value="007">俄罗斯</option> 
      <option value="0064">新西兰</option> 
      <option value="84">越南</option>     
    </select>
   </div>
   </div>

  <label for="inputEmail">手机号</label>
       <div class="form-row align-items-center">
 
    <div class="col-auto">
    
      <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div id="guojiatxt" class="input-group-text" style="padding: 6px; background: #ddd;height: 33.5px;width:70px;border-radius: 5px  0px 0px  5px; text-align: center;">+86</div>
        </div>
        <input type="hidden" id="guojiaCodeReal" value="86">
        <input type="text" class="form-control" placeholder="" id="mob" max="11" style="  width: 205px ;padding:0" v-model="mobile" value="">
      </div>
    </div>
  
    <div class="col-auto">
      <button @click="sendYanZen" type="button" class="btn btn-primary mb-2" id="TencentCaptcha" data-appid="2094747255" data-cbfn="callback" style="width:100px">获取验证码</button>
    </div>
  </div>
      <div class="form-label-group"> <label for="inputPassword">验证码</label>
        <input class="form-control" style="  width: 276px " id="code" maxlength="6" v-model="inputYZM">
       
      </div>

     
      <button class="btn btn-lg btn-primary btn-block" @click="clickLogin" type="button">确定</button>
      	 <div class="form-item link" style="margin-top: 20px"><a href="/login/" class="">账号登录</a> | <a href="/login/forgot" class="">找回密码？</a></div> 
    
    </form>

  </div>
    </div>
</template>

<script>
    export default({
        data(){
            return {
                isShow:false,
                country:'中国大陆',
                mobile:'',
                yanzhenma:'zxcvbz',
                inputYZM:''
            }
        },
        created(){
            
        },
        methods:{
            local(){
                if(this.isShow==false){
                    this.isShow=true;
                }else{
                    this.isShow=false
                }
            },
            sendYanZen(){
                var self=this;
                var reg=/^[1][3-9][0-9]{9}$/;
                if(reg.test(this.mobile)){
                    $.get({
                        url:'http://localhost:3000/yanzhen',
                        data:{
                            mobile:this.mobile
                        },
                        success:function(res){
                            console.log(res);
                            self.yanzhenma=res.obj;
                            console.log(self.yanzhenma)
                        }
                    })
                }else{
                    alert('请输入正确的手机号')
                }
            },
            clickLogin(){
                console.log(this.yanzhenma,this.inputYZM)
                if(this.yanzhenma==this.inputYZM){
                    window.sessionStorage.setItem('isLogin',true);
                    window.sessionStorage.setItem('username',this.mobile);
                    alert('登陆成功，点击返回主页');
                    this.$router.push('/');
                }else{
                    alert('验证码不正确');
                }
                this.inputYZM='';
            }
        }

    })
</script>

<style scoped>
    *{
        box-sizing: border-box
    }
    body{ 
        position: absolute;
        left:0;
        top:0;
        height:100%;
        width:100%;
        background:rgba(0,0,0,0.1);
        overflow: hidden;
    }
    .login{
        position: absolute;
        left:0;
        top:0;
        height:100%;
        width:100%;
        background-size: auto 100%; 
        background:rgba(0,0,0,0.1);
        overflow: hidden;
    }
    .body2{
        display: flex;
        -ms-flex-align: center;
        -ms-flex-pack: center;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    .form-label-group {
        position: relative;
        margin-bottom: 1rem;
    }
    .description {
        font-size: 13px;
        color: #888;
    }
    .form-signin {
        width: 100%;
        max-width: 420px;
        padding: 15px;
        margin: 0 auto;
        background: #fff;
        box-shadow: 0 0.25rem 0.75rem rgba(0, 0, 0, .05);
        border-radius: 5px;
    }
</style>

