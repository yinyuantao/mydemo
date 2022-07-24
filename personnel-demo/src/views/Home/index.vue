<template>
    <div>
        <Navbar></Navbar>
        <FileManagement></FileManagement>
    </div>
</template>


<script>
import FileManagement from './FileManagement/index.vue'
import Navbar from './Navbar/index.vue'
export default {
    name:"Home",
    components: { 
        FileManagement,
        Navbar
    }
}
</script>

<style>

</style>