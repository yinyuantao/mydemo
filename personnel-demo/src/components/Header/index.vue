<template>
  <header class="header"> 
      <div class="top"> 
          <span>人力资源管理系统</span>
          <P>欢迎您：涛涛(人事经理)</P><button>退出系统</button>
      </div>
  </header>
</template>

<script>
export default {
    name:"Header",
    data(){ 
        return{ 

        }
    }
}
</script>

<style lang="scss" scoped>
    #top { 
        height: 90px;
        width: 100px;
        background-color: aqua;
    }
</style>