var express=require("express");
var router=express.Router();
var pool=require("../pool");
var http = require('http');  
var sha1=require('sha1');
var qs = require('querystring'); 

var request = require('request');


router.get("/",(req,res)=>{
    var $mobile=req.query.mobile;
    var $yanzhenma=rNum();
    
    var Appkey='0e291b00ac80a76ac118f52665153115';
    let now=Date.now();
    let CurTime=parseInt(now/1000)+""; //当前时间秒数
    var Nonce=sha1(CurTime);  //随机数
    var AppSecret='7e32b4b9356b';
    var str=AppSecret + Nonce + CurTime;
    var CheckSum=sha1(str);
    var post_data = {  
        templateid:14873032,
	    mobile:$mobile,
	    authCode:$yanzhenma
    };//这是需要提交的数据  
    var content = qs.stringify(post_data);

    var options = {
        url: 'https://api.netease.im/sms/sendcode.action?'+content, //拼接也是在body 不拼接就写body:"", 封装好的
        method: 'POST',
        headers: {
            'AppKey'        : Appkey,
            'Nonce'         : Nonce,
            'CurTime'       : CurTime,
            'CheckSum'      : CheckSum,
            'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
        }
    };
    //res.send({code:$yanzhenma});

    request(options, function(error, response, body){
        console.log(error);
        console.log(response);
        console.log(body);
        res.send(JSON.parse(body));
    });
 

})

function callback(error, response, body) {
    console.log(error)
    console.log(response);
    console.log(body);
}
 
function rNum(){
    var r1=function(){ return Math.floor(Math.random()*8)+1}
    var r=function(){ return Math.floor(Math.random()*9)}
    var yanzhenma=r1()*100000+r()*10000+r()*1000+r()*100+r()*10+r()*1;
    return yanzhenma;
}



  module.exports=router;




  