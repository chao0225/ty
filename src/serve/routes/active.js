const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    console.log(req.query);
    if(!pno){
        pno=1;
    }
    if(!pageSize){
        pageSize=4;
    }
    var obj={pno:pno,pageSize:pageSize};
    (async function() {
        await new Promise(function(open){
            var sql="select count(aid) as c from active_competition";
            pool.query(sql,(err,result)=>{
                if(err)throw err;
                //res.send(result[0].c);
                var pageCount=Math.ceil(result[0].c/pageSize);
                obj.pageCount=pageCount;
                open();
            })
        })

        await new Promise(function(open){
            var sql="SELECT * FROM active_competition WHERE aid!=0 limit ?,?";
            var offset=parseInt((pno-1)*pageSize);
            pageSize=parseInt(pageSize);
            pool.query(sql,[offset,pageSize],(err,result)=>{
                if(err) console.log(err);
                obj.data=result;
                res.writeHead(200,{
                    "Content-Type":"application/json;charset=utf-8",
                    "Access-Control-Allow-Origin":"*"
                })
                open();
            })
        })
        res.write(JSON.stringify(obj))
        res.end();
    })()
    
    
})


module.exports=router;