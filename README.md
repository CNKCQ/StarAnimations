# StarAnimations

[![CI Status](https://img.shields.io/travis/CNKCQ/StarAnimations.svg?style=flat)](https://travis-ci.org/CNKCQ/StarAnimations)
[![Version](https://img.shields.io/cocoapods/v/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)
[![License](https://img.shields.io/cocoapods/l/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)
[![Platform](https://img.shields.io/cocoapods/p/StarAnimations.svg?style=flat)](https://cocoapods.org/pods/StarAnimations)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Interface
```swift
    // popup star 绝对路径
    public var presentRect: CGRect = CGRect.zero
    // bottom star 绝对路径
    public var dismissRect: CGRect = CGRect.zero
    // ✨ 图片模型
    public var starImage: UIImage!
    // 动画时间设置
    public var duration: Double = 5
    // present 控制器背景颜色
    public var destBackgroundColor: UIColor?
    // present 控制器背景透明度
    public var destAlpha: CGFloat = 0.4
    // ✨ 个数控制
    public var starsCount: Int = 9
    // 💥 旋转数组个数必须大于 ✨ 个数
    public var toothAngles: [CGFloat] = [40, 80, 120, 160, 200, 240, 280, 320, 360]
    
    // 💥 距离数组个数必须大于 ✨ 个数
    public var outPaddings: [CGFloat] = [20, 30, 40, 50, 60, 70, 80, 90, 100]
```

## Demo
bottom controller

```swift
let presentRect = beginCell.starView!.convert(beginCell.starView!.bounds, to: window)
        self.animationManager = StarAnimationManager(self, dest: self.dest)
        StarsConfig.default.presentRect = presentRect
        StarsConfig.default.destBackgroundColor = UIColor.blue
        StarsConfig.default.starImage = beginCell.starView.image ?? UIImage(named: "icon_star_filled_green-1")
        StarsConfig.default.duration = 0.4
        present(self.dest, animated: true, completion: nil)
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

注意： 目前此 lib 只支持真机 debug 调试

```ruby
pod 'StarAnimations'
```

## Author

CNKCQ, wangchengqvan@gmail.com

## License

StarAnimations is available under the MIT license. See the LICENSE file for more info.


