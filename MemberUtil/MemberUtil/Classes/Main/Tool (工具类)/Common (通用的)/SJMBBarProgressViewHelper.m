//
//  SJMBBarProgressViewHelper.m
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import "SJMBBarProgressViewHelper.h"

@implementation SJMBBarProgressViewHelper

/**
 *  显示加载中...
 *
 *  @param view 在哪个View上显示
 */
+ (void)showLoadingHubInView:(UIView *)view {
    
    MBProgressHUD *hud         = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText              = @"加载中...";
    hud.mode                   = MBProgressHUDModeIndeterminate;
    hud.userInteractionEnabled = false;
}

/**
 *  显示提示信息
 *
 *  @param text   提示的信息
 *  @param view   在哪个View上显示
 *  @param second 多少秒后隐藏
 */
+ (void)showHudText:(NSString *)text
             inView:(UIView *)view
          hideAfter:(float)second {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode           = MBProgressHUDModeText;
    hud.labelText      = text;
    [hud hide:YES afterDelay:second];
}

/**
 *  隐藏Hud
 *
 *  @param view 在哪个视图上的
 */
+ (void)hideHudInView:(UIView *)view {
    
    [MBProgressHUD hideHUDForView:view animated:YES];
}

/**
 *  显示提示信息
 *
 *  @param text 提示信息
 *  @param view 在哪个view上显示
 */
+ (void)showHudText:(NSString *)text inView:(UIView *)view {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode           = MBProgressHUDModeIndeterminate;
    hud.labelText      = text;
    hud.userInteractionEnabled = false;
}

@end
