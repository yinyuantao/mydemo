<template>
    <div class="left">
        <el-form ref="JobTitleData" :model="salarylistData" label-width="80px">
            <el-form-item label="薪酬项目名称">
                <el-input v-model="salarylistData.syName"></el-input>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" @click="addsalarylistData">提交</el-button>
                <el-button>返回</el-button>
            </el-form-item>
        </el-form>
    </div>
</template>

<script>

import {addSalary} from '@/api/api.js'
export default {
    inject: ['reload'],
    data() {
        return {
            salarylistData:
            {
                syId: "",
                syName: "",
                isDelete: "0",
            },

        };
    },
    methods: {
        //添加分类
        addsalarylistData() {
            addSalary(this.salarylistData).then(function (response) {

            });
            this.$router.push({ path: "/payrollSettings" });
            this.reload();
        },

    },
    created() {
        // 页面渲染之前
        this.init();
    }
};
</script>

<style>
</style>