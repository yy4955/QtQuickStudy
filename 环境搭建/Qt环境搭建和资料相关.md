#Qt 环境搭建
## 工具
**1.** VS 2015  
**2.** Qt 5.9.6   
**3.** Qt下载网址[http://download.qt.io/archive/qt/](http://download.qt.io/archive/qt/ "Qt源码及工具下载地址")  
**4.** windwos SDK

## 说明
Qt的IDE可以使用VS2015，也可以使用QtCreator。经实测，VS2015对QML的语法高亮没有支持，所以推荐使用QtCreator。编译器既可以使用VS2015的，也可以使用mingw，因为我们主要开发在windows上的程序，所以这里推荐使用VS2015。

## 安装过程
###**1）**下载安装包
打开qt源码下载网址，会看到qt的好多版本，建议使用5.9以上的版本，本着统一的原则，我们选择5.9.6。选择5.9，然后选择5.9.6，会出现下图网页
![](wangzhi.png)  
这里选择windows-X86版本，这个安装包包含32位和64位。这里下载要等好久，容许我去看一会儿《银魂》哈。 

###**2）**安装Qt
启动下载的安装包，一路next，会有个提示路径的选项，这里需要注意的是路径不要包含中文，
![](path.png)  
在一路next，会有个提示安装组件的界面，因为我们使用的是VS2015，所以勾上VS2015的两个选项
![](tool.png)  
在然后就是一路next，直到安装完成。

##**3）**安装VS2015
这个没有什么可说的，需要注意的是，建议安装git扩展工具，方便使用vs进行版本控制
![](vsgit.png)   
不过，这个工具有时候会安装失败，但是不影响VS安装，git可以回头自己下载安装包独立安装。

##**4）**安装调试工具
百度搜索win7 SDK，如果你是win10，就搜win10 SDK，
![](dbg0.png)
点开连接后点击下载，或者点击Install Instructions，选择对应的操作系统的ios文件，我这里是64位的win7，我选择X64ISO，
![](dbg2.png)
下载完后开始安装，一直下一步，直到让你选择安装内容的界面，这里其它都不要，只要调试工具，
![](dbg1.png)
然后下一步，直到安装完成。

## 测试编译连接和调试
这里可以创建一个QT版的hello来测试环境是否搭建成功。首先，打开QtCreator，一般在开始菜单可以找到快捷方式，
在欢迎界面选择按钮**New Project**
![](test1.png)   
然后选择**qT Quick**模板,点击按钮**Choose**  
![](test2.png)   
这里工程名填自己建的工程的名称，下面的创建路径填你希望创建的工程所在的路径，这里需要注意，这里的路径名不要有中文名称  
![](test3.png)   
后面是默认，然后一直到套件（kit）选择界面，这里选择一个套件，这里一般会有两个选项，如果没有选项，就是你的VS没有装或者安装Qt的时候没有VS工具套件的选项没有打勾，如果你想编译32位程序就选择32bit的套件，如果是64位程序则选择另一个，我这里就选择32位
![](test4.png)  
然后一直下一步，到最后完成。完成之后会一般会显示出代码编辑界面，在窗口的左下角，有4个按钮，最下面三个依次是**运行**、**调试**和**构建**
![](test5.png)
点击最下面的**构建按钮（Ctrl + B）**，一般会报错，
![](test6.png)
这是因为还没有给项目指定编译器，点击菜单**工具**->**选项**，弹出选项对话框，选择左边的**构建和运行**按钮，中间的tab界面选择**构建套件**，然后下面的**编译器**标签右边对应的列表框显示没有编译器，
![](test7.png)
这里，点开列表框选择我们需要的编译器，这里我都选择由VS2015提供的x86平台的编译器，然后确定。
![](test8.png)  
编译成功后，界面右下角的状态栏的进度条显示是**绿色**的，如果没有成功则显示是**红色**的，然后在**编译输出**窗口会有错误的提示。
![](test9.png)  
最后，点击左下角的**运行**按钮，会弹出一个标题为helloword的窗口。
![](test10.png)  
在source目录下的main.cpp里面的main函数随便设置一个断点，然后点击**调试**按钮，会弹出一个错误框，
![](test11.png)  
这是因为没有配置调试器，同样按照之前的方法打开构建运行的窗口，在调试器标签右侧的列表框选择调试器，一般只有一个，
![](test12.png)  
完成后，点击调试按钮，程序应该断下来了。

##相关资料
**1）** 《Qt Quick核心编程》-- 内容全面而且详尽，可以当做工具书来查看   
**2）** [Qt资料大全](https://blog.csdn.net/liang19890820/article/details/51752029 ) -- 一个包含相当多QT资料介绍的博客，这里的资料包括书籍、博客和论坛。  
**3）** 几个QML的快速上手的视频，需要注意，这些视频是付费视频，不要抱什么希望，只是用来上手的
[Qt Quick 4小时入门](https://edu.csdn.net/course/detail/1042)  
[JavaScript for Qt Quick(QML)](https://edu.csdn.net/course/detail/335)  
[Qt Quick（QML） 学习之路](https://edu.csdn.net/course/detail/8239)  
