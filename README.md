#### [阿里云限量红包](https://promotion.aliyun.com/ntms/yunparter/invite.html?userCode=3ua1yzxw)：
本站推荐的用户，限时领 “最高1888元红包” 。云产品通用红包，可叠加官网常规优惠使用。 
如果你需要帮助部署本应用到阿里云，请QQ联系<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2::52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>


#  kkFileView-Wife

#### 介绍
kkFileView/file-online-preview 伴侣/老婆， 一键部署 kkFileView/file-online-preview到阿里云，腾讯云，华为云或者你自己的系统。

kkFileView： https://gitee.com/kekingcn/file-online-preview 
项目为文件文档在线预览项目解决方案，对标业内付费产品有【永中office】【office365】【idocv】等，该项目使用流行的spring boot搭建，易上手和部署，基本支持主流办公文档的在线预览，如doc,docx,Excel,pdf,txt,zip,rar,图片等等

#### 软件架构
基于docker部署，5分钟搞定，节省时间，保证可用。


#### 安装教程

*1 安装docker
   *1.1  Windows Docker 安装：      
         https://docs.docker.com/docker-for-windows/
    *1.2 Mac Docker 安装： 
         https://docs.docker.com/docker-for-mac/
    *1.3 Ubuntu Docker 安装： 
         https://docs.docker.com/install/linux/docker-ce/ubuntu/
*2 安装docker-compose


#### 使用说明

*1. docker run
    运行 redis
    docker run --name redis --restart=always  -p 6379:6379 -d redis:4
    运行 filePreview
    docker run --name filepreview --restart=always -d  --network=host datheng/kk_fileview_wife

*2. docker-compose
    保存 文件 kk-filePreview.yml 到目标机器， 然后运行
    docker-compose -f filePreview.yml up -d

#### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

***
### 关注微信公众号，第一时间获取项目最新动向，即将推出视频教程
![](https://platform-wxmall.oss-cn-beijing.aliyuncs.com/upload/20180708/qr.jpg "微信公众号")