# neveruseless

[pub.dev](https://pub.flutter-io.cn/packages?q=neveruseless),

# 三个插件简单用法

## NeverBus，全局订阅型通知

### 1:适用环境

此方法可以生效于所有存在在堆栈中的Widget页面，订阅的标识符请尽可能保证全局唯一。

### 2:使用

1. 订阅一个内容语句：


    neverBus.on('自定义语句可替换勿重复',(){});
    
    
例如下：


    '''
    neverBus.on('ExampleNeverBusOne', (object) {
          if(mounted){
            setState(() {
              i += 1;
            });
          }
        });
    '''

请放置于页面的   initState()  中。


2. 取消一个订阅语句


    neverBus.off('自定义语句可替换勿重复'); 
    
    
 例如下：
 
    '''
    neverBus.off('ExampleNeverBusOne');
    '''
    
 请放置于页面的 dispose()  中
 
 
 3. 任何页面发送通知触发代码
 
 
    neverBus.emit("自定义语句可替换勿重复");
    
 例如下:
 
 
     '''
     neverBus.emit("ExampleNeverBusOne");
     '''
 
 
 ## neverLocalStorage 本地化缓存工具
 
 
### 1:适用环境

全局生效，仅限单APP访问

### 2:使用

1:保存

    neverLocalStorageWrite("thisFlag", '要保存的内容，需要是String');
    
2:读取，需要添加await

    await neverLocalStorageRead("thisFlag");
    
3:删除

    neverLocalStorageRemove('thisFlag');
    
    
## neverDoubleTryOrZero String转Double，在转化失败时默认为0

1:使用

    neverDoubleTryOrZero('111.11'); // 111.11 double