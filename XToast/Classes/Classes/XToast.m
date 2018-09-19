//
//  XToast.m
//  XToast
//
//  Created by Leo on 2018/8/29.
//

#import "XToast.h"
#import "UIView+XToast.h"

static const NSString *loading_text_def = @"Loading";

@implementation XToast

+ (void)load {
    [XCSToastManager setTapToDismissEnabled:YES];
    [XCSToastManager setQueueEnabled:NO];
    [XCSToastManager setDefaultPosition:XCSToastPositionCenter];
    [XCSToastManager setDefaultDuration:3.0];
}

// Show in the window
+ (void)showToastWithText:(NSString *)text {
    if (!text || ![text isKindOfClass:[NSString class]] || text.length == 0) {
        return;
    }
    [[XToast window] x_makeToast:text];
}

+ (void)hideToast {
    [[XToast window] x_hideToast];
}

+ (void)showLoading {
    [[XToast window] x_makeToastActivity:XCSToastPositionCenter];
}

+ (void)showLoadingAndHideAfter:(NSTimeInterval)interval {
    if (interval > 0) {
        [XToast showLoading];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [XToast hideLoading];
        });
    }
}

+ (void)showLoadingWithText:(NSString *)text {
    [[XToast window] x_makeToastActivity:XCSToastPositionCenter withText:text ? text : loading_text_def];
}

+ (void)showLoadingWithText:(NSString *)text hideAfter:(NSTimeInterval)interval {
    if (interval > 0) {
        [XToast showLoadingWithText:text];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [XToast hideLoading];
        });
    }
}

+ (void)hideLoading {
    [[XToast window] x_hideToastActivity];
}

// Get the window
+ (UIWindow *)window {
    return [[UIApplication sharedApplication].delegate window];
}

// Show in the view
+ (void)showToastWithText:(NSString *)text inView:(UIView *)view {
    if (!view) return;
    [view x_makeToast:text];
}

+ (void)hideToastInView:(UIView *)view {
    if (!view) return;
    [view x_hideToast];
}

+ (void)showLoadingInView:(UIView *)view {
    if (!view) return;
    [view x_makeToastActivity:XCSToastPositionCenter];
}

+ (void)showLoadingInView:(UIView *)view hideAfter:(NSTimeInterval)interval {
    if (!view) return;
    if (interval > 0) {
        [XToast showLoadingInView:view];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [XToast hideLoadingInView:view];
        });
    }
}

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view {
    if (!view) return;
    [view x_makeToastActivity:XCSToastPositionCenter withText:text ? text : loading_text_def];
}

+ (void)showLoadingWithText:(NSString *)text inView:(UIView *)view hideAfter:(NSTimeInterval)interval {
    if (!view) return;
    if (interval > 0) {
        [XToast showLoadingWithText:text inView:view];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [XToast hideLoadingInView:view];
        });
    }
}

+ (void)hideLoadingInView:(UIView *)view {
    if (!view) return;
    [view x_hideToastActivity];
}

@end
