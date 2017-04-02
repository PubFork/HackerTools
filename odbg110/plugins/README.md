OllyDbg1.10最多支持32个插件,如果多于32个插件,将会闪退.

# 插件说明

*  **symbols\_on\_demand\_odbg.dll：Symbols on Demand插件**
	来自：http://rammichael.com/symbols-on-demand
	Symbols on Demand插件，它需要另外两个组件，dbghelp.dll以及symsrv.dll，
	这两个组件需和ollydbg.exe同目录。
	配置节区位于ollydbg.ini的[Plugin Symbols on Demand]中，
	默认的符号搜索路径为：SRV*.\Symbols*http://msdl.microsoft.com/download/symbols
	里面的".\Symbols"是存放符号的目录路径，根据自定义进行调整。

* **+BP-OLLY v2.0 beta4.dll:BP-OLLY插件**
	在OD的菜单栏显示一些小工具或提供一些功能,包括:BP,P,VB,Notepad,Calc,Folder,CMD,Exit

* **OllyTab:**
	选项卡式的显示各个窗口

* **StrongOD:**
	一个强大的插件,比如针对入口点为0的可执行程序,StrongOD将会在程序载入OD时,
	自动断在可执行程序的模块开始处,然后可以自行寻找EOP进行调试,
	StrongOD也可以隐藏OD,使钩取OllyDbg的反调试机制失效.
* **IDFicator:idaficator.dll+bytes.oep+IDAfictrotools**
	下载地址：https://tuts4you.com/download.php?view.2058，解压密码:tuts4you
	安装方法：
	解压后，将plugin目录下面的idaficator.dll 以及 bytes.oep拷贝到plugins目录。
	将ico目录ollydbg.exe所在目录。将idaficator-2.0-minimalis-pack-files/pack随便放到
	某个目录里面（建议放到plugins目录），这里我放到了plugins目录并且重命名为
	idaficator-tools,然后打开OD，依次[plugins/idaficator/options/settings/rote],
	然后配置RADASM的相对路径：.\plugins\idaficator-tools，HELP的路径可以设置为：.\help\win32.hlp
	它会在OD的界面上生成几个图标，最右侧的是1，2，3，4，5.打开OD后就会看到了。
	它也会生成一个Breakpoint菜单项，里面包含了常见的断点。
# 其他
* **DOCS**
    本目录存放一些附加的文档说明
