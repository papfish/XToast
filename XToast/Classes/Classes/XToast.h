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

+ (void)showLoadingWithText:(NSString *)text;

+ (void)hideLoading;

// Show in the view
+ (void)showToastWithText:(NSString *)text inView:(UIView *)view;

+ (void)hideToastInView:(UIView *)view;

+ (void)showLoadingInView:(UIView *)view;

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view;

+ (void)hideLoadingInView:(UIView *)view;

// You can set the "CSToastManager" to customize it if you needed, use by #import "UIView+Toast.h"

@end
