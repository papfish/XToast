//
//  XViewController.m
//  XToast
//
//  Created by Leo on 08/29/2018.
//  Copyright (c) 2018 Leo. All rights reserved.
//

#import "XViewController.h"
#import "XToast-umbrella.h"
//#import "UIView+XToast.h"

@interface XViewController ()

@end

@implementation XViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    XCSToastStyle *style = [[XCSToastStyle alloc] initWithDefaultStyle];
//    style.titleColor = [UIColor redColor];
//    [XCSToastManager setSharedStyle:style];
}

- (IBAction)toastEvent:(UIButton *)sender {
    switch (sender.tag) {
        case 1000:
            [XToast showToastWithText:@"toast in view" inView:self.view];
            break;
        case 1001:
            [XToast showToastWithText:@"toast in window"];
            break;
        case 1002:
        {
            [XToast showLoadingInView:self.view];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [XToast hideLoadingInView:self.view];
            });
        }
            break;
        case 1003:
        {
            [XToast showLoading];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [XToast hideLoading];
            });
        }
            break;
        case 1004:
        {
            [XToast showLoadingWithText:@"Loading" inView:self.view];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [XToast hideLoadingInView:self.view];
            });
        }
            break;
        case 1005:
        {
            [XToast showLoadingWithText:@"Loading"];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [XToast hideLoading];
            });
        }
            break;
        case 1006:
            [XToast showLoadingWithText:@"Loading" inView:self.view hideAfter:5];
            break;
        case 1007:
            [XToast showLoadingWithText:@"Loading" hideAfter:5];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
