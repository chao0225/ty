const express=require('express');
const bodyParser=require('body-parser');
const img = require('./routes/bigimg.js');
const user = require('./routes/user.js');
const yanzhen=require('./routes/yanzhen.js')
const solicit=require('./routes/solicit.js');
const index=require("./routes/index");
const works=require("./routes/works");
const app=express();
const cors = require("cors");
app.use(bodyParser.urlencoded({
    extended:false
}))
app.use(cors({
    origin:["http://localhost:8080"],
    credentials:true
}))

app.use(express.static('public'))

/*路由 */
var example=require('./routes/example');
var active=require('./routes/active');

//监听端口
app.listen(3000);


app.use('/example',example);
app.use('/active',active);

app.use("/img",img);
app.use("/user",user);
app.use('/yanzhen',yanzhen);
app.use('/solicit',solicit);

app.use("/index",index);
app.use("/works",works);
