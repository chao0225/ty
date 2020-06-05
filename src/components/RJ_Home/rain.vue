<template>
    <div class="rain-box">
        <!--前雨幕-->
        <div class="rain front-row">
             <!--前方雨滴下落-->
            <div class="drop" v-for="(item,i) in rainDatas" :key="i" :style="item.dropLeft">
                <!--雨滴变化-->                 
                <div class="stem" :style="item.stemAndsplat"></div>
                <!--雨花--> 
                <div class="splat" :style="item.stemAndsplat"></div>
            </div>
        </div>
        <!--后雨幕-->
        <div class="rain back-row">
            <!--后方雨滴下落-->
            <div class="drop"  v-for="(item,i) in rainDatas" :key="i" :style="item.dropRight">
                <!--雨滴变化-->                 
                <div class="stem" :style="item.stemAndsplat"></div>
                <!--雨花--> 
                <div class="splat" :style="item.stemAndsplat"></div>
            </div>
        </div>
    </div>
</template>
<script>
    export default({
        data(){
            return{
                rainDatas:[]   /*雨点位置数据 */
            }
        },
        methods:{
            getRainData(){
                var increment=0;
                while(increment<100){
                    //随机数1-98之间，控制动画延迟多久后开始执行
                    var randoHundo = (Math.floor(Math.random() * (98 - 1 + 1) + 1));
                    //随机数2-5之间，控制动画花费的时间
                    var randoFiver = (Math.floor(Math.random() * (5 - 2 + 1) + 2)); 
                    //雨点距离盒子边界的距离递增，借用randoFiver
                    increment+= randoFiver;
                    this.rainDatas.push(
                        {
                            /*前雨幕从左边下落雨滴样式*/
                            dropLeft:{
                                'left':`${increment}%`,                             //距离盒子左边框距离
                                'bottom':`${randoFiver + randoFiver - 1 + 100}%`,   //距离盒子下底框距离
                                'animation-delay':`0.${randoHundo}s`,               //动画延迟开始时间
                                'animation-duration':`0.5${randoHundo}s`            //动画持续时间
                            },
                            /*后雨幕从右边下落雨滴样式*/
                            dropRight:{   
                                'right':`${increment}%`,                            //距离盒子右边框距离
                                'bottom':`${randoFiver + randoFiver - 1 + 100}%`,   //距离盒子下底框距离
                                'animation-delay':`0.${randoHundo}s`,               //动画延迟开始时间
                                'animation-duration':`0.5${randoHundo}s`            //动画持续时间
                            },
                             /*雨滴和雨花动画样式*/
                            stemAndsplat:{
                                'animation-delay':`0.${randoHundo}s`,               //动画延迟开始时间
                                'animation-duration':`0.5${randoHundo}s`            //动画持续时间
                            }
                        }
                    );
                }
            }
        },
        created() {
            
        },
        mounted() {
            //是否显示雨花
            $('.rain-box').toggleClass('splat-toggle');
	        //是否显示背景
            $('.rain-box').toggleClass('back-row-toggle');
            //获取雨点数据         
            this.getRainData();
        },
        components:{

        },
        props:[]
    })
</script>

<style>
.rain-box{
    position: absolute;
    left:0;
    top:0;
    height:100%;
    width:100%;
    background-size: auto 100%;   
    z-index: 300;
}

.rain-box .rain {
  position: absolute;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 2;
}

.rain-box .rain.back-row {
  display: none;
  z-index: 1;
  bottom: 60px;
  opacity: 0.5;
}

.rain-box.back-row-toggle .rain.back-row {
  display: block;
}

/*雨滴从上到下*/
.drop {
  position: absolute;
  bottom: 100%;
  width: 15px;
  height: 120px;
  pointer-events: none;
  animation: drop 0.5s linear infinite;
}
@keyframes drop {
  0% {
    transform: translateY(0vh); /*0%屏幕高度*//*相对于视口的高度。视口被均分为100单位的vh*/
  }
  75% {
    transform: translateY(90vh);/*90%屏幕高度*/
  }
  100% {
    transform: translateY(90vh);/*90%屏幕高度*/
  }
}

/*雨滴的透明度变化*/
.stem {
  width: 1px;
  height: 60%;
  margin-left: 7px;
  background: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25));
  animation: stem 0.5s linear infinite;
}
@keyframes stem {
  0% {
    opacity: 1;  /*透明度1*/
  }
  65% {
    opacity: 1;  /*透明度1*/
  }
  75% {
    opacity: 0;  /*透明度0*/
  }
  100% {
    opacity: 0;  /*透明度0*/
  } 
}

/*雨花的状态动画 默认display:none 不显示*/
.splat {
  width: 15px;
  height: 10px;
  border-top: 2px dotted rgba(255, 255, 255, 0.5);
  border-radius: 50%;
  opacity: 1;
  transform: scale(0);
  animation: splat 0.5s linear infinite;
  display: none;
}

/*控制是否显示雨花 display:block*/
.rain-box.splat-toggle .splat {
  display: block;
}
@keyframes splat {
  0% {
    opacity: 1;
    transform: scale(0);
  }
  80% {
    opacity: 1;
    transform: scale(0);
  }
  90% {
    opacity: 0.5;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(1.5);
  }
}

.splat-toggle {
  top: 20px;
}

.back-row-toggle {
  top: 90px;
  line-height: 12px;
  padding-top: 14px;
}

</style>

