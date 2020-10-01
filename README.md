#### [阿里云限量红包](https://promotion.aliyun.com/ntms/yunparter/invite.html?userCode=3ua1yzxw)
![阿里云限量红包](https://images.gitee.com/uploads/images/2019/0109/114755_88127e0f_744475.jpeg "1000_90.jpg")
推荐你，限时领 “最高1888元红包” 。云产品通用红包，可叠加官网常规优惠使用。 

如果部署本应用到阿里云，你需要帮助，请QQ联系：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=63144436&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2::52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>

#  kkFileView-Wife

#### 介绍
kkFileView/file-online-preview 伴侣/老婆， 一键部署 kkFileView/file-online-preview到阿里云，腾讯云，华为云或者你自己的系统。
- 官方QQ群:
<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=bfadc4dd4ed82df0124179951e4e541eb80eba6f84b41b6dd420c37cb3074cf8"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="kkFileView/file-online-preview" title="kkFileView/file-online-preview"></a>,

kkFileView： https://gitee.com/kekingcn/file-online-preview 
项目为文件文档在线预览项目解决方案，对标业内付费产品有【永中office】【office365】【idocv】等，该项目使用流行的spring boot搭建，易上手和部署，基本支持主流办公文档的在线预览，如doc,docx,Excel,pdf,txt,zip,rar,图片等等

#### 软件架构
基于docker部署，5分钟搞定，节省时间，保证可用。


#### 安装教程

1. 安装docker
    - Windows Docker安装：         https://docs.docker.com/docker-for-windows/
    - Mac Docker 安装： 
         https://docs.docker.com/docker-for-ma/
    - Ubuntu Docker 安装： 
         https://docs.docker.com/install/linux/docker-ce/ubuntu/
2. 安装docker-compose(可选）:
https://docs.docker.com/compose/install/


#### 使用说明


方法1 Docker run

    - 运行 redis

    docker run --name redis --restart=always  -p 6379:6379 -d redis:4
     - 运行 filePreview

    docker run --name filepreview --restart=always -d  --network=host datheng/kk_fileview_wife

方法2 Docker-compose

    保存 文件 kk-filePreview.yml 到目标机器， 然后运行

    docker-compose -f filePreview.yml up -d

浏览器打开： http://x.x.x.x:8012 （x.x.x.x 为安装服务器ip地址），如下图，就可以上传和预览啦！
![首页](https://images.gitee.com/uploads/images/2019/0109/135824_71f74b4f_744475.png "屏幕截图.png")

#### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

***
### 关注微信公众号，第一时间获取项目最新动向，即将推出jhipster视频教程
![IT帮 微信公众号](https://images.gitee.com/uploads/images/2019/0109/113105_3693297b_744475.jpeg "qrcode_for_gh_f9293db43b7c_258.jpg")
