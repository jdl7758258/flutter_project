# flutter_nb_plus

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 数据流
 Provider : provide 升级版本 当初纠结于provider 与 Bloc 但是Provider 是Google自主研发并且粒子性很强易懂因此选择

# 导航

 fluro : 大家都懂的

# 数据存储

# MaterialApp简介
  MaterialApp({
    Key key,
    this.title = '', // 设备用于为用户识别应用程序的单行描述
    this.home, // 应用程序默认路由的小部件,用来定义当前应用打开的时候，所显示的界面
    this.color, // 在操作系统界面中应用程序使用的主色。
    this.theme, // 应用程序小部件使用的颜色。
    this.routes = const <String, WidgetBuilder>{}, // 应用程序的顶级路由表
    this.navigatorKey, // 在构建导航器时使用的键。
    this.initialRoute, // 如果构建了导航器，则显示的第一个路由的名称
    this.onGenerateRoute, // 应用程序导航到指定路由时使用的路由生成器回调
    this.onUnknownRoute, // 当 onGenerateRoute 无法生成路由(initialRoute除外)时调用
    this.navigatorObservers = const <NavigatorObserver>[], // 为该应用程序创建的导航器的观察者列表
    this.builder, // 用于在导航器上面插入小部件，但在由WidgetsApp小部件创建的其他小部件下面插入小部件，或用于完全替换导航器
    this.onGenerateTitle, // 如果非空，则调用此回调函数来生成应用程序的标题字符串，否则使用标题。
    this.locale, // 此应用程序本地化小部件的初始区域设置基于此值。
    this.localizationsDelegates, // 这个应用程序本地化小部件的委托。
    this.localeListResolutionCallback, // 这个回调负责在应用程序启动时以及用户更改设备的区域设置时选择应用程序的区域设置。
    this.localeResolutionCallback, // 
    this.supportedLocales = const <Locale>[Locale('en', 'US')], // 此应用程序已本地化的地区列表 
    this.debugShowMaterialGrid = false, // 打开绘制基线网格材质应用程序的网格纸覆盖
    this.showPerformanceOverlay = false, // 打开性能叠加
    this.checkerboardRasterCacheImages = false, // 打开栅格缓存图像的棋盘格
    this.checkerboardOffscreenLayers = false, // 打开渲染到屏幕外位图的图层的棋盘格
    this.showSemanticsDebugger = false, // 打开显示框架报告的可访问性信息的覆盖
    this.debugShowCheckedModeBanner = true, // 在选中模式下打开一个小的“DEBUG”横幅，表示应用程序处于选中模式
 }) 

# MaterialApp简介
const Scaffold({
  Key key,
  this.appBar, // 标题栏
  this.body,  // 用于显示当前界面主要内容的Widget
  this.floatingActionButton, // 一个悬浮在body上的按钮，默认显示在右下角
  this.floatingActionButtonLocation, // 用于设置floatingActionButton显示的位置
  this.floatingActionButtonAnimator, // floatingActionButton移动到一个新的位置时的动画
  this.persistentFooterButtons, // 多状态按钮
  this.drawer, // 左侧的抽屉菜单
  this.endDrawer, //  右'侧的抽屉菜单
  this.bottomNavigationBar,// 底部导航栏。
  this.bottomSheet, // 显示在底部的工具栏
  this.backgroundColor,// 内容的背景颜色
  this.resizeToAvoidBottomPadding = true, // 控制界面内容 body 是否重新布局来避免底部被覆盖，比如当键盘显示的时候，重新布局避免被键盘盖住内容。
  this.primary = true,// Scaffold是否显示在页面的顶部
}) 