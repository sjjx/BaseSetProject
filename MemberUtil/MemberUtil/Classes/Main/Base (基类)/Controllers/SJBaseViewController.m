//
//  SJFatherViewController.m
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import "SJBaseViewController.h"
#import "SJMBBarProgressViewHelper.h"

@interface SJBaseViewController ()

@end

@implementation SJBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self applyBarTintColorToTheNavigationBar:[UIColor redColor]];
}

#pragma mark 加载进度

/**
 *  显示加载中
 */
-(void)showHub {
    
    [SJMBBarProgressViewHelper showLoadingHubInView:self.view];
    
}

/**
 *  隐藏加载中
 */
- (void)hideHub {
    
    [SJMBBarProgressViewHelper hideHudInView:self.view];
}

/**
 *  设置navigationBar color，titile font
 */
- (void)applyBarTintColorToTheNavigationBar:(UIColor *)barTintColor {
    NSParameterAssert(barTintColor != nil);
    id navigationBarAppearance = self.navigationController.navigationBar;
    [navigationBarAppearance setBarTintColor:barTintColor];
    self.navigationController.toolbar.translucent = NO;
}

@end
