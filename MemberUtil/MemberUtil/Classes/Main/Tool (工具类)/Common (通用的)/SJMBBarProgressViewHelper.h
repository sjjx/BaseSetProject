//
//  SJMBBarProgressViewHelper.h
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface SJMBBarProgressViewHelper : MBBarProgressView

/**
 *  显示加载中...
 *
 *  @param view 在哪个View上显示
 */
+ (void)showLoadingHubInView:(UIView *)view;

/**
 *  显示提示信息
 *
 *  @param text   提示的信息
 *  @param view   在哪个View上显示
 *  @param second 多少秒后隐藏
 */
+ (void)showHudText:(NSString *)text
             inView:(UIView *)view
          hideAfter:(float)second;

/**
 *  隐藏Hud
 *
 *  @param view 在哪个视图上的
 */
+ (void)hideHudInView:(UIView *)view;

/**
 *  显示提示信息
 *
 *  @param text 提示信息
 *  @param view 在哪个view上显示
 */
+ (void)showHudText:(NSString *)text inView:(UIView *)view;

@end
