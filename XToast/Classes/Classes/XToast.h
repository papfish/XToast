//
//  XToast.h
//  XToast
//
//  Created by Leo on 2018/8/29.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CSToastStyle;

@interface XToast : NSObject

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

@end
