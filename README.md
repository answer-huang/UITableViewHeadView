UITableViewHeadView
===================

关于UITableViewHeadView是否存在bug的验证

问题描述：

1.下载该项目，在iOS 7.0.x 上运行的话，会发现cell中 content的origin.y 为负数的视图会被 HeadView 覆盖掉，个人认为是被截图掉了，也就是系统没绘制那一部分内容，但是在其他版本的系统没这个问题，包括iOS5
