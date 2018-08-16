# StarAnimations

[![CI Status](https://img.shields.io/travis/CNKCQ/StarAnimations.svg?style=flat)](https://travis-ci.org/CNKCQ/StarAnimations)
[![Version](https://img.shields.io/cocoapods/v/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)
[![License](https://img.shields.io/cocoapods/l/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)
[![Platform](https://img.shields.io/cocoapods/p/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
## preview

![image](https://s27.aconvert.com/convert/p3r68-cdx67/3lhc7-6czie.gif)

## Interface
```swift
   // popup star 绝对路径
    public var presentRect: CGRect = CGRect.zero
    // bottom star 绝对路径
    public var dismissRect: CGRect = CGRect.zero
    // ✨ 图片模型
    public var starImage: UIImage!
    // ✨ 动画时间设置
    public var starsDuration: Double = 1
    // dismiss 动画时间设置
    public var dismissDuration: Double = 1
    // present 动画间隔设置 value 如果小于 0.25 会使用 duration 的 value
    public var presentDuration: Double = 0.1
    // present 控制器背景颜色
    public var destBackgroundColor: UIColor?
    // present 控制器背景透明度
    public var destAlpha: CGFloat = 0.4
    // ✨ 个数控制
    public var starsCount: Int = 5
    // 转场缩放比例 (0.0~1.0)
    public var transformScale: CGFloat = 0.8
    // 自定义 present 动画的 闭包
    public var presentAnimation: ((_ transitionContext: UIViewControllerContextTransitioning, _ duration: Double) -> (Void))? = nil
    // 自定 present 动画的 (复杂的动画)
    public var presentAnimator: PresentAnimator?
    // 💥 旋转数组个数必须 >= ✨ 个数
    public var toothAngles: [CGFloat] = [
        40,
        80,
        120,
        160,
        200,
        240,
        280,
        320,
        360
    ]
    
    // 💥 距离数组个数必须 >= ✨ 个数
    public var outPaddings: [CGFloat] = [
        20,
        30,
        40,
        50,
        60,
        70,
        80,
        90,
        100
    ]
```

## Demo
bottom controller

```swift
      let window = UIApplication.shared.keyWindow!
        let presentRect = beginCell.starView!.convert(beginCell.starView!.bounds, to: window)
        StarsConfig.default.presentRect = presentRect
        StarsConfig.default.starImage = beginCell.starView.image ?? UIImage(named: "icon_star_filled")
        StarsConfig.default.destAlpha = 0.6
        StarsConfig.default.dismissDuration = 0.6
        StarsConfig.default.presentDuration = 0.3
        StarsConfig.default.starsDuration = 1
        StarsConfig.default.starsCount = 9
        
        let dest: UIViewController = UpViewController()
        
//        dest.hero.isEnabled = true
//        dest.hero.modalAnimationType = .zoomOut 

        self.animationManager = StarAnimationManager(self, dest: dest)
        self.present(dest, animated: true, completion: nil)
```
popup Controller

```swift
        let window = UIApplication.shared.keyWindow!
        let dismissRect = self.starView.convert(self.starView.bounds, to: window);
        StarsConfig.default.dismissRect = dismissRect
        self.dismiss(animated: true, completion: nil)
```

## Installation

StarAnimations is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

注意： 目前此 framework 只支持真机 debug 调试

```ruby
pod 'StarAnimations'
```

## Author

CNKCQ, wangchengqvan@gmail.com

## License

StarAnimations is available under the MIT license. See the LICENSE file for more info.


