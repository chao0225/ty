const express=require('express');
var router=express.Router();
var pool=require('../pool.js');
router.get("/", (req, res) => {
    var obj={};
    (async function () {
        //hq_index_carousel
        await new Promise(function (open) {
            var sql = `SELECT * FROM gracg_carousel WHERE cid!=0 order by cid;`
            pool.query(sql, [], (err, result) => {
                if (err) console.log(err);
                obj.carousel=result;
                open();
            });
        })
        
        //gracg_wrap
        await new Promise(function (open) {
            var sql = `SELECT * FROM gracg_wrap WHERE wid!=0 order by wid;`
            pool.query(sql, [], (err, result) => {
                if (err) console.log(err);
                obj.wrap=result;
                open();
            });
        })
        //gracg_news
        await new Promise(function (open) {
            var sql = `SELECT * FROM gracg_news WHERE nid!=0 order by nid;`
            pool.query(sql, [], (err, result) => {
                if (err) console.log(err);
                obj.news=result;
                open();
            });
        })
     
        res.send(obj);
    })();
});
//导出
module.exports=router;
