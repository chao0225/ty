<template>
  <div id="app">
    <transition name="fade1">
      <router-view/>
    </transition>
  </div>
</template>

<script>
  export default({
    data(){
      return {
      }
    },
    methods:{
       
    },
    created() {
      
    }
  })
</script>

<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box
}

    .fade1-enter-active {
        transition: all 3s ease ;
    }
    .fade1-leave-active {
        transition: all 3s ease  ;
    }
    .fade1-enter {
        opacity: 0;
    }
    .fade1-leave-to{
        opacity: 0;
    }

    .fade1-enter-active {
        transition: all 2s ease;
    }
    .fade1-leave-active {
        transition: all 2s ease  ;
    }
    .fade1-enter {
        opacity: 0;
    }
    .fade1-leave-to{
        opacity: 0;
    }
</style>
