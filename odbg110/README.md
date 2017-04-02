# 基本初始化配置
你可以双击fixpath.bat进行OD以及插件的相关路径配置，
如果你希望使用tools下面的工具并将其添加到[发送到]鼠标右键，
那么你需要双击tools/sendto/目录下面的sendto.bat文件。
使用之前请将OD目录添加到杀毒软件的信任目录，strongod会加载一个
驱动文件，经常会被误杀。

# 目录说明
* fixpath.bat：
	完成一些路径初始化任务。
* tools：
	这下面我存放了一些小巧但是有用的程序，包含有：
	dup2,exeinfo,notepad2,scylla
	为了将这些添加到鼠标右键的[发送到]菜单，我在sendto目录下面
	写了一个sendto.bat,你以管理员权限执行即可。

* fonts：
	该文件夹里面有YaHei Consolas Hybrid字体，比较适合于阅读代码。如果电脑上没有这个字体，请先安装。
* ollydbg.ini:
	该文件为OD的配置文件
* help：
	该文件里面包含了一些帮助文件：
    olldbg.hlp是OD自带的帮助文档，打开OD后，依次[Help/Contents]，在打开的选择窗口中选择olldbg.hlp文件即可。
    win32.hlp是win32的帮助文档，打开OD后，依次[Help/Select API help file]，选择win32.hlp文档即可，
    不过我建议你直接修改ollydbg.ini,在[history]节中设置win32.hlp的相对路径，比如：API help file =.\help\win32.hlp 
    x86.hlp是x86指令集帮助文档，需要安装插件MnemonicHelp，安装后找到ollydbg.ini的[Plugin MnemonicHelp]节区，加入x86.hlp路径。
    但是为了能够在Vista及其以上的系统使用hlp文件，你需要以管理员权限执行install-help-support中的install.cmd
* lib:
	一些有用的库，可以在ollydbg.ini文件的[Import libraries]节区中设置库路径。
	这个功能类似IDA的FLIRT，使用符号库（Lib），可以让OllyDbg以函数名显示DLL中的函数。
	例如MFC42.DLL是以序号输出函数的，这时在OllyDbg显示的是序号，
	如果让其加载MFC42.DLL调试符号，则以函数名显示相关输出函数。
	也可以通过ODGUI界面加载，方法是单击菜单“Debug/Select import libraries”来打开导入库窗口。
* odbg110[原版]:
	原始的OD发行文件。
* plugins:
	插件目录
* udds:
	分析过程中产生的中间文件存放目录。
* unpack-script:
	许多为OD而写的脚本。
* symbols:
	调试符号文件目录，可以在ollydbg.ini的[history]节区中设置Symbolic data path参数，
	这个要和插件symbols_on_demand_odbg.dll的设置一致。
* dbghelp.dll以及symsrv.dll:
	这两个文件属于需要被Symbols on Demand(全名：symbols_on_demand_odbg.dll)所用到，
	需要放到与ollydbg.exe同目录。而symbols_on_demand_odbg.dll仍然是放到plugins目录
* loaddll.exe:
	当你第一次加载dll文件时，会提示：
	File xxx is a Dynamic Link Library. Windows can't execute DLLs directly.
	Lanunch LOADDLL.exe.
	点击“是”后，OD将会生成一个loaddll.exe用于加载DLL。
	加载完DLL后，将会停止在DLL的入口处，此时F7或者F8就可以进入DllMain函数里面了。
	或者你也可以F9直接运行，OD会再次停下来。然后你可以依次[Debug/Call DLL export]
	来打开一个界面，在这个新界面中选择要执行的函数。
