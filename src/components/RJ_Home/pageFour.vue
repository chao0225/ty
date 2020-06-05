<template>
    <div class="app_page_4">
            <img src="https://inling.oss-cn-beijing.aliyuncs.com/illustration/img/home/RJ_4.jpeg" alt="">
            <rain></rain>
            <div class="text">
                <p id="p1"></p>
                <p id="p2"></p>
            </div>
    </div>
</template>

<script>
import rain from "@/components/RJ_Home/rain.vue"
    export default {
        data(){
            return {

            }
        },
        methods:{

             writeText :function(text,words){
                    var types = [text];

                    var stopType = false;     //用于停止自动打字的

                    var index = 0;
                    var tempWords = "";
                    var isNext = false;
                    var time = 200;

                    var startType = setInterval(function(){
                        if(stopType){
                            //如果需要停止打字
                            clearInterval(startType);
                        }
                        
                        if(tempWords.length === 0){
                        //如果删完了，就开始
                            if(isNext){
                                index++;
                                index = index%3;
                                isNext = false;
                            }
                            tempWords = types[index].substring(0,tempWords.length+1);
                        }else if(tempWords.length === types[index].length && isNext === false){
                            //如果已经到头了，就要删去
                            //tempWords = tempWords.substring(0,tempWords.length-1);
                            //isNext = true;
                            //time = 5000;
                            clearInterval(startType)
                        }else{
                            //如果既没删完也没显示完
                            if(isNext){
                                //如果是在减少
                                tempWords = tempWords.substring(0,tempWords.length-1);
                                time = 150;
                            }
                            else{
                                //如果在增多
                                time = 200;
                                tempWords = types[index].substring(0,tempWords.length+1);
                            }
                        }
                        words.innerHTML="&nbsp;"+tempWords;
                    },time);
                }
            
        },
        created(){
            
        },
        mounted(){
            var words1 = document.getElementById('p1');
            this.writeText('------水调歌头·落日古城角-----落日古城角，把酒劝君留。长安路远，何事风雪敝貂裘。散尽黄金身世，不管秦楼人怨，归计狎沙鸥。明夜扁舟去，和月载离愁。功名事，身未老，几时休。诗书万卷，致身须到古伊周。莫学班超投笔，纵得封侯万里，憔悴老边州。何处依刘客，寂寞赋登楼。',words1);

        },
        components:{
            rain
        }
    }
</script>

<style scoped>
    .app_page_4{
        position: absolute;
        left:0;
        top:0;
        height:100%;
          width: 100%;
        background-size: auto 100%;     
    }
    .app_page_4 img{
        height:100%;
        width: 100%;
        min-width: 1361px;
        min-height:752px;
    }
    .text{
        position: absolute;
        top:100px;
        right:200px;
        width: 400px;
        height:400px;
        background-color: transparent;
    }
    .text #p1{
        width: 100%;
        height: 100%;
        writing-mode:tb-rl;
        font-family:cursive;
        font-size: 25px;
    }
</style>

