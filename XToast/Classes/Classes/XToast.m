//
//  XToast.m
//  XToast
//
//  Created by Leo on 2018/8/29.
//

#import "XToast.h"
#import "UIView+Toast.h"

@implementation XToast

+ (void)load {
    [CSToastManager setTapToDismissEnabled:YES];
    [CSToastManager setQueueEnabled:NO];
    [CSToastManager setDefaultPosition:CSToastPositionCenter];
    [CSToastManager setDefaultDuration:3.0];
}

// Show in the window
+ (void)showToastWithText:(NSString *)text {
    if (!text || ![text isKindOfClass:[NSString class]] || text.length == 0) {
        return;
    }
    [[XToast window] makeToast:text];
}

+ (void)hideToast {
    [[XToast window] hideToast];
}

+ (void)showLoading {
    [[XToast window] makeToastActivity:CSToastPositionCenter];
}

+ (void)showLoadingWithText:(NSString *)text {
    [[XToast window] makeToastActivity:CSToastPositionCenter withText:text ? text : @"Loading"];
}

+ (void)hideLoading {
    [[XToast window] hideToastActivity];
}

// Get the window
+ (UIWindow *)window {
    return [[UIApplication sharedApplication].delegate window];
}

// Show in the view
+ (void)showToastWithText:(NSString *)text inView:(UIView *)view {
    if (!view) return;
    [view makeToast:text];
}

+ (void)hideToastInView:(UIView *)view {
    if (!view) return;
    [view hideToast];
}

+ (void)showLoadingInView:(UIView *)view {
    if (!view) return;
    [view makeToastActivity:CSToastPositionCenter];
}

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view {
    if (!view) return;
    [view makeToastActivity:CSToastPositionCenter withText:text ? text : @"Loading"];
}

+ (void)hideLoadingInView:(UIView *)view {
    if (!view) return;
    [view hideToastActivity];
}

@end
