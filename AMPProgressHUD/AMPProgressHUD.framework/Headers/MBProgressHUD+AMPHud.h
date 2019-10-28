//
//  MBProgressHUD+AMPHud.h
//  AHSapp
//
//  Created by jugang.tang on 2019/10/21.
//  Copyright © 2019 ShangHai Yue Yi Network Information Technology Co., Ltd. All rights reserved.
//


#import <MBProgressHUD/MBProgressHUD.h>

#define kHudBgColor [UIColor blackColor]
#define kHudContentColor [UIColor whiteColor]

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (AMPHud)

+ (MBProgressHUD *)createHUDWithMessage:(NSString *_Nullable)message mode:(MBProgressHUDMode)mode;

+ (void)showMessage:(NSString *_Nullable)message;

+ (void)showErrorMessage:(NSString *_Nullable)message;

+ (void)showSuccessMessage:(NSString *_Nullable)message;

+ (void)showMessage:(NSString *_Nullable)message withImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
