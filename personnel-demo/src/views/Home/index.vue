<template>
  <div>
    <!-- 左边菜单 -->
    <Top/>
    <Main/>
    <Left /> 
  </div>
</template>

<script>
import Left from './Left/index.vue'
import Top from './top/top.vue'
import Main from './main/main.vue'

export default {
    name: 'Home',
    components: {
        Left,
        Top,
        Main
    },
}
</script>

<style>

</style>