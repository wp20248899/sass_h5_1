# sass_h5_1

A new Flutter project.

一、关于 Getx 插件使用：(<https://github.com/jonataslaw/get_cli>)

1. 在 pubspec.yaml 文件中添加依赖

二、get_cli 命令使用如下：

1. 生成页面：get create page home // home 路由名称
2. 使用脚本 generate.pages.sh 可以生成多个页面，无需一个一个的使用命令来创建页面
3. 先执行脚本权限：chmod +x generate_pages.sh、如何再执行命令：./generate_pages.sh、即可创建多个页面

三、ScreenUtilInit

1. 是 flutter_screenutil 库的核心组件，用于初始化屏幕适配功能
2. designSize - 设计稿的尺寸 builder - 必须属性，用于构建子组件。通常返回。等等
