//
//  UIApplication+Amp.m
//  AHSapp
//
//  Created by jugang.tang on 2019/9/27.
//  Copyright © 2019 ShangHai Yue Yi Network Information Technology Co., Ltd. All rights reserved.
//

#import "UIApplication+Amp.h"

@implementation UIApplication (Amp)

+ (UIViewController *)amp_getTopVC {
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    if (window && window.windowLevel != UIWindowLevelNormal) {
        for (UIWindow *windowTemp in [UIApplication sharedApplication].windows) {
            if (!windowTemp.isHidden && windowTemp.windowLevel == UIWindowLevelNormal) {
                window = windowTemp;
                break;
            }
        }
    }
    return [self amp_getCurrentVC:window.rootViewController];
}

+ (UIViewController *)amp_getCurrentVC:(UIViewController *)currentVC {
    if (currentVC.presentedViewController) {
        return [self amp_getCurrentVC:currentVC.presentedViewController];
    } else if ([currentVC isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabVC = (UITabBarController *)currentVC;
        return [self amp_getCurrentVC:tabVC.selectedViewController];
    } else if ([currentVC isKindOfClass:[UINavigationController class]]) {
        UINavigationController *naviVC = (UINavigationController *)currentVC;
        return [self amp_getCurrentVC:naviVC.visibleViewController];
    } else {
        return currentVC;
    }
}

@end
