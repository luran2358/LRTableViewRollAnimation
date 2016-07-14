# LRTableViewRollAnimation

## 效果图:
![效果图1.gif](http://upload-images.jianshu.io/upload_images/2353624-e40a9bd59f1f7da3.gif?imageMogr2/auto-orient/strip)
![效果图2.gif](http://upload-images.jianshu.io/upload_images/2353624-eb04feb7d8c49aa8.gif?imageMogr2/auto-orient/strip)
![效果图3.gif](http://upload-images.jianshu.io/upload_images/2353624-c74c6b1eff10b3d5.gif?imageMogr2/auto-orient/strip)

######动画的方向需要根据自己喜好去设置:
```
 x,y值为:  _cellAnchorPoint = CGPointMake(x, y);
 -angle值为:  _angle =  - kAngle;

//用户往下拖动时候动画出现的初始位置:
 左边位置:  x=0 y=1 -angle 
 右边位置: x=1 y=1 

//用户往上拖动时候动画出现的初始位置:
  左边位置: x=0 y=0 
  右边位置: x=1 y=0 -angle 

//在中心点翻转设置:
  x=0.5 y=0.5 

```