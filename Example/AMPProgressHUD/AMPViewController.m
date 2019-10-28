//
//  AMPViewController.m
//  AMPProgressHUD
//
//  Created by tangjugang on 10/25/2019.
//  Copyright (c) 2019 tangjugang. All rights reserved.
//

#import "AMPViewController.h"
#import <AMPProgressHUD/AMPProgressHUD.h>

@interface AMPViewController ()

@end

@implementation AMPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)clicked:(id)sender {
    [MBProgressHUD showMessage:@"我是一个提示！"];
}

- (IBAction)clickedTwo:(id)sender {
    [MBProgressHUD showErrorMessage:@"错误错误❌❎"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
