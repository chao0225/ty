const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.get("/list",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    console.log(req.query);
    if(!pno){
        pno=1;
    }
    if(!pageSize){
        pageSize=5;
    }
    var obj={pno:pno,pageSize:pageSize};
    var progress=0;
    var sql="SELECT count(id) as c FROM renwu ";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        var pageCount=Math.ceil(result[0].c/pageSize);
        obj.pageCount=pageCount;
        progress+=50;
        if(progress==100){
            res.writeHead(200,{
                "Content-Type":"application/json;charset=utf-8",
                "Access-Control-Allow-Origin":"*"
            })
            res.write(JSON.stringify(obj))
            res.end();
        }
    })
    var sql="SELECT * FROM renwu WHERE id!=0 limit ?,?";
    var offset=parseInt((pno-1)*pageSize);
    pageSize=parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
       if(err) throw err;
       obj.data=result;
       progress+=50;
       if(progress==100){
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(obj))
        res.end();
       }
    })  
});
router.get("/listd",(req,res)=>{
  var sql="SELECT * FROM renwu WHERE classd = '插图'";
  //var str="插图";
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send(result);
  })
});
module.exports = router;