<template>
  <header class="header"> 
      <div class="top"> 
          <span>人力资源管理系统</span>
          <P>欢迎您：涛涛(人事经理)<button>退出系统</button></P>
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

<style scoped lang="scss">
    .top { 
        height: 90px;
        width: auto;
        background-color: #FFD553;
        text-align: center;
        line-height: 90px;
    }
    .top span { 
        font-size: 40px;
        color: beige;
        margin-left: 20px;
    }
    .top p { 
        float: right;
    }
    .top button { 
        margin-right: 10px;
        margin-left: 10px;
    }
</style>