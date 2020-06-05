const express=require('express');
const pool=require('../pool');
var router= express.Router();

router.get('/',(req,res)=>{
    res.send('hahhah');
})

module.exports=router;