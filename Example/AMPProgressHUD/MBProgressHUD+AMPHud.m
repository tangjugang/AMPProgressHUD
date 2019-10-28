//
//  MBProgressHUD+AMPHud.m
//  AHSapp
//
//  Created by jugang.tang on 2019/10/21.
//  Copyright © 2019 ShangHai Yue Yi Network Information Technology Co., Ltd. All rights reserved.
//

#import "MBProgressHUD+AMPHud.h"
#import "UIApplication+Amp.h"

@implementation MBProgressHUD (AMPHud)

+ (UIView *)getCurrentHudView {
    UIViewController *topVC = [UIApplication amp_getTopVC];
    UIView *view = topVC.navigationController ? topVC.navigationController.view : topVC.view.window;
    if (view == nil) view = [[[UIApplication sharedApplication] delegate] window];
    return view;
}

+ (MBProgressHUD *)createHUDWithMessage:(NSString *_Nullable)message mode:(MBProgressHUDMode)mode {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self getCurrentHudView] animated:YES];
    hud.mode = mode;
    hud.label.text = message;
    hud.label.font = [UIFont systemFontOfSize:16];
    hud.bezelView.style = MBProgressHUDBackgroundStyleBlur;
    hud.bezelView.color = kHudBgColor;
    hud.contentColor = kHudContentColor;
    return hud;
}

+ (void)showMessage:(NSString *_Nullable)message {
    if (!message) return;
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self getCurrentHudView] animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.label.text = message;
        hud.label.font = [UIFont systemFontOfSize:16];
        hud.bezelView.style = MBProgressHUDBackgroundStyleBlur;
        hud.bezelView.color = kHudBgColor;
        hud.contentColor = kHudContentColor;
        [hud hideAnimated:YES afterDelay:2.0];
    });
}

+ (void)showErrorMessage:(NSString *_Nullable)message {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"AMPProgressHUD" ofType: @"bundle"]];
    NSString *imageName = [[bundle resourcePath] stringByAppendingPathComponent:@"amp_failure"];
    [self showMessage:message withImage:[UIImage imageWithContentsOfFile:imageName]];
}

+ (void)showSuccessMessage:(NSString *_Nullable)message {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"AMPProgressHUD" ofType: @"bundle"]];
    NSString *imageName = [[bundle resourcePath] stringByAppendingPathComponent:@"amp_success"];
    [self showMessage:message withImage:[UIImage imageWithContentsOfFile:imageName]];
}

+ (void)showMessage:(NSString *_Nullable)message withImage:(UIImage *)image {
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self getCurrentHudView] animated:YES];
        hud.mode = MBProgressHUDModeCustomView;
        hud.label.text = message;
        hud.label.font = [UIFont systemFontOfSize:16];
        hud.bezelView.style = MBProgressHUDBackgroundStyleBlur;
        hud.bezelView.color = kHudBgColor;
        hud.contentColor = kHudContentColor;
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        hud.customView = imageView;
        [hud hideAnimated:YES afterDelay:2.0];
    });
}
@end
