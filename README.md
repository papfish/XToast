# XToast

[![CI Status](https://img.shields.io/travis/papfish/XToast.svg?style=flat)](https://travis-ci.org/papfish/XToast)
[![Version](https://img.shields.io/cocoapods/v/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)
[![License](https://img.shields.io/cocoapods/l/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)
[![Platform](https://img.shields.io/cocoapods/p/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)

## Description

XToast是基于 [https://github.com/scalessec/Toast](https://github.com/scalessec/Toast) 的4.0.0版本调整及封装。

根据项目实际的需求，封装了以下功能：

#### 功能

* 支持显示在`View`或者`Window`上，使用默认的配置信息。
* 添加超时自动消失的`Loading View`，支持添加小段文字。
* 添加`Loading View`的遮罩层，并阻止页面的用户交互。
* `Toast`和`Loading`方法都在主线程执行，避免UI线程问题。

---

#### Toast库的调整

* `Toast`添加`makeToastActivity: withText:`方法，给`Activity`添加小段文字。
* `Toast`添加`Activity`的遮罩层，可设置`setCoverEnabled`是否阻止用户交互事件。
* `Toast`添加类名及方法名前缀，避免重名问题。

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

XToast is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XToast'
```
## Usage

**Step 1:**

```
#import <XToast/XToast.h>
```

**Step 2:**
```
// Show in the window
+ (void)showToastWithText:(NSString *)text;

+ (void)hideToast;

+ (void)showLoading;

+ (void)showLoadingAndHideAfter:(NSTimeInterval)interval;

+ (void)showLoadingWithText:(NSString *)text;

+ (void)showLoadingWithText:(NSString *)text hideAfter:(NSTimeInterval)interval;

+ (void)hideLoading;

// Show in the view
+ (void)showToastWithText:(NSString *)text inView:(UIView *)view;

+ (void)hideToastInView:(UIView *)view;

+ (void)showLoadingInView:(UIView *)view;

+ (void)showLoadingInView:(UIView *)view hideAfter:(NSTimeInterval)interval;

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view;

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view hideAfter:(NSTimeInterval)interval;

+ (void)hideLoadingInView:(UIView *)view;

// You can set the "XCSToastManager" to customize it if you needed, use by #import <XToast/UIView+XToast.h>
```

## Author

liang.xv@qq.com

## License

XToast is available under the MIT license. See the LICENSE file for more info.
