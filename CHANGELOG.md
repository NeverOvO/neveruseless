## 0.0.7

neverLocalStorageRead 现在会增加一次转义为String，在代码调用时不需要使用临时变量，可以直接正确获取到存储值


## 0.0.6

问题修正：
    因shared_preferences中的platform: ^3.1.0去除了一些字段，但其未适配，使用本库请增加以下代码，等待修复后可以删除：

    '''
    dependency_overrides:
    platform: ^3.1.0
    '''

新增个人常用代码，示例可见Example
    -新增：neverFormatDate();
        最简传入一个int型13位时间戳,输出一个格式化时间字符串
    字符串样式可见 ： https://pub.flutter-io.cn/packages/date_format
    



## 0.0.5 

增加了解释


## 0.0.4

1 : neverBus             全局通知类代码
2 : neverLocalStorage    本地存储类代码
3 : neverDoubleTryOrZero 浮点类型的安全转化

## 0.0.3

新增示例

## 0.0.2

新增作者名

## 0.0.1

占位提交

* TODO: Describe initial release.
