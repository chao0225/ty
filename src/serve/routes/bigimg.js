const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/big",(req,res)=>{
    var wid = req.query.wid;
    var sql = "SELECT * FROM `zjl_big` WHERE wid=?";
    pool.query(sql,wid,(err,result)=>{
        res.send(result);
        
    })
})
router.get("/bottom",(req,res)=>{
    var sql = "SELECT * FROM `zjl_bottom` WHERE 1";
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
})
router.get("/comment",(req,res)=>{
    var wid = req.query.wid;
    var sql = "SELECT * FROM `zjl_comment` WHERE wid=?";
    pool.query(sql,wid,(err,result)=>{
        res.send(result);
    })
})
router.get("/user",(req,res)=>{
    var wid = req.query.wid;
    var sql = "SELECT * FROM `zjl_user` WHERE wid=?";
    pool.query(sql,wid,(err,result)=>{
        res.send(result);
    })
})
router.post("/addcomment",(req,res)=>{
    var wid= req.body.wid;
    var user_uname = "盛夏";
    var address="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (8).jfif";
    var time = new Date();
    var comment = req.body.comment;
    var sql = `INSERT INTO zjl_comment(id, wid, user_name, address, commenttime, comment) VALUES (null,?,?,?,?,?)`
    pool.query(sql,[wid,user_uname,address,time,comment],(err,result)=>{
        if(err) throw err;
        console.log(result)
     
        if(result.affectedRows==1){
            res.send({code:1,msg:"插入成功"})
        }else{
            res.send({code:-1,msg:"插入失败"})
        }
    })
})
router.post("/love",(req,res)=>{
    var address="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/160x160 (8).jfif";
    var user_name="盛夏";
    var wid= req.body.wid;
    
})


module.exports = router;