<template>
    <div class="left">
        <el-form ref="JobTitleData" :model="JobTitleData" label-width="80px">
            <el-form-item label="职称编号">
                <el-input v-model="JobTitleData.numbering"></el-input>
            </el-form-item>
            <el-form-item label="职称名称">
                <el-input v-model="JobTitleData.jobName"></el-input>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" @click="saveOrUpdate">提交</el-button>
                <el-button>返回</el-button>
            </el-form-item>
        </el-form>
    </div>
</template>

<script>
import { addJobType } from "@/api/api.js";
import { updateJobList } from "@/api/api";
import { getJobById } from "@/api/api";

export default {
    inject: ['reload'],
    data() {
        return {
            JobTitleData:
            {
                jobId: "",
                jobName: "",
                numbering: "",
            },
        };
    },
    methods: {
        //判断修改还是新增操作
        //根据是否有id值来判断
        saveOrUpdate() {
            if (!this.JobTitleData.jobId) {
                this.addJobList();
            } else {
                this.updatejob();
            }
        },
        //添加分类
        addJobList() {
            addJobType(this.JobTitleData).then(function (response) {

            });
            this.$router.push({ path: "/titleSetting" });
            this.reload();
        },

        //更新分类
        updatejob() {
            updateJobList(this.JobTitleData).then(function (response) {

            })
            this.$router.push({ path: "/titleSetting" });
            this.reload();
        },

        //判断路径中是否有id值
        init() {
            if (this.$route.query && this.$route.query.jobId) {
                const id = this.$route.query.jobId;
                this.getInfo(id);
            } else {
                this.JobTitleData = {};
            }
        },



        //根据id查询,数据回显
        getInfo(id) {
            var thar = this;
            getJobById(id).then(function (response) {
                thar.JobTitleData = response.data.data.list
            })
        }

    },
    created() {
        // 页面渲染之前
        this.init();
    }
};
</script>

<style>
</style>