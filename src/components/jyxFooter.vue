<template>
        <div id="footer">
        <div class="container">
            <div class="content">
                <div class="content-item">
                    <p>产品</p>
                    <router-link to="#">作品中心</router-link>
                    <router-link to="#">推荐作者</router-link>
                    <router-link to="#">客户端下载</router-link>
                </div>
                <div class="content-item">
                    <p>关于</p>
                    <router-link to="#">了解我们</router-link>
                    <router-link to="#">新闻动态</router-link>
                    <router-link to="#">合作案例</router-link>
                    <router-link to="#">联系我们</router-link>
                </div>
                <div class="content-item">
                    <p>友情链接</p>
                    <router-link to="#">绘画学院（插画教程）</router-link>
                    <router-link to="#">艺场（正版插画授权）</router-link>
                </div>
                <div class="content-item">
                    <p>商务合作</p>
                    <router-link to="#">李演羽(Winney)</router-link>
                    <router-link to="#">商务总监QQ: 2090677817</router-link>
                </div>
            </div>
            <div class="explain">
                <p>涂鸦王国（gracg.com）会员所发布展示的原创作品版权归原作者所有，任何商业用途均须联系作者。</p>
                <p>未经授权用作他处，作者将保留追究侵权者法律责任的权利。</p>
                <p>Copyright&nbsp;&copy;&nbsp;2003&nbsp;-&nbsp;2019&nbsp;网站备案：闽ICP备16007928号-2&nbsp;网络文化经营许可证：闽网文(2019)1334-071号&nbsp;增值电信业务经营许可证：闽B2-20190809</p>
            </div>
        </div>
    </div>
</template>
<script>
    export default{
        name:"jyxFooter",
        data(){
            return{}
        }
    }
</script>
<style scoped>
        #footer{
            width:100%;
            background-color: hsl(0, 0%, 17%);
            padding:80px 0 50px;
        }
        #footer>.container>.content{
            width:100%;
            min-width:1140px;
            height:224px;
            display: flex;
            justify-content: space-around;
            border-bottom:1px #424242 solid;
            margin:0 auto;
        }
        #footer>.container>.content>.content-item>a{
            display:block;
            text-decoration: none;
            line-height: 30px;
            font-size: 16px;
            color:#e0e0e0;
        }
        #footer>.container>.content>.content-item>p{
            color:#fff;
            font-size: 18px;
            padding-bottom: 25px;
        }
        #footer>.container>.explain{
            width:1110px;
            height:105px;
            margin:0 auto;
        }
        #footer>.container>.explain>p{
            color:#acacac;
            font-size: 14px;
            line-height: 35px;
    margin-bottom: 0;
        }
        #footer>.container>.explain>p:first-child{
            padding-top:40px;
        }
</style>