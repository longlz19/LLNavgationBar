LLNavgationBar
====

![](https://img.shields.io/badge/language-OC-orange.svg)
![](https://img.shields.io/cocoapods/v/LLNavgationBar.svg?style=flat)

## LLNavgationBar是什么
LLNavgationBar主要是为了解决页面对导航栏操作比较多而产生的，隐藏、显示、高度、背景颜色、字体大小等互不干扰
## LLNavgationBar功能

- 每个页面单独控制Bar当前的状态
- 修改bar的偏移，可以很方便的修改bar当前显示高度
- 设置barItem与系统相似
- bar始终保持在父试图的最上面

## 安装
### CocoaPods
在Podfile中添加 pod "LLNavgationBar".

## 如何使用
### 添加 支持xib 和 storyboard
```
[LLNavgationBarView addBarTo:self.view];
```
### 设置title
```
self.barView.title = @"title";
或者self.title = @"title";
```

### 设置barButtonItem
```
self.barView.leftBarButtonItem = [LLBarButtonItem barButtonItemWithTitle:@"左边" handler:^(LLBarButtonItem *barButtonItem) {
    //do soming    
}];
self.barView.rightBarButtonItem = [LLBarButtonItem barButtonItemWithTitle:@"右边" handler:^(LLBarButtonItem *barButtonItem) {
    //do soming    
}];
```

### 设置bar与view顶部的距离
```
[self.barView setTopInset:-64 animated:YES];
```

## 协议
LLNavgationBar被许可在 MIT 协议下使用。查阅 LICENSE 文件来获得更多信息。
