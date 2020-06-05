const express=require('express');
var router=express.Router();
var pool=require('../pool.js');

router.get("/work", (req, res) => {
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){pno=1}
    if(!pageSize){pageSize=5}

    var obj={pno:pno,pageSize:pageSize};
    var progress=0;
    var sql="SELECT count(wid) as c FROM gracg_works";
    pool.query(sql,(err,result)=>{
        if(err) {throw err}
        //console.log(result)
        //console.log(result[0].c)
        var pageCount=Math.ceil(result[0].c/pageSize);
        obj.pageCount=pageCount;
        progress+=50;
        if(progress==100){
            res.send({code:1,msg:obj});
        }
    })


    var sql=" SELECT * FROM gracg_works LIMIT ?,?";
    var offset=parseInt((pno-1)*pageSize);
    pageSize=parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err){throw err}
        //console.log(result)
        obj.data=result;
        progress+=50;
        if(progress==100){
            res.send({code:1,msg:obj})
        }
    })
    
});


//导出
module.exports=router;