# XToast

[![CI Status](https://img.shields.io/travis/xuliang/XToast.svg?style=flat)](https://travis-ci.org/xuliang/XToast)
[![Version](https://img.shields.io/cocoapods/v/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)
[![License](https://img.shields.io/cocoapods/l/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)
[![Platform](https://img.shields.io/cocoapods/p/XToast.svg?style=flat)](https://cocoapods.org/pods/XToast)

## Description


XToast是基于 [https://github.com/scalessec/Toast](https://github.com/scalessec/Toast) 的4.0.0版本调整及封装。

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
#import "XToast.h"
```

**Step 2:**
```
// Show in the window
+ (void)showToastWithText:(NSString *)text;

+ (void)hideToast;

+ (void)showLoading;

+ (void)showLoadingWithText:(NSString *)text;

+ (void)hideLoading;

// Show in the view
+ (void)showToastWithText:(NSString *)text inView:(UIView *)view;

+ (void)hideToastInView:(UIView *)view;

+ (void)showLoadingInView:(UIView *)view;

+ (void)showLoadingInView:(UIView *)view withText:(NSString *)text;

+ (void)hideLoadingInView:(UIView *)view;
```

## Author

Leo, liang.xv@qq.com

## License

XToast is available under the MIT license. See the LICENSE file for more info.
