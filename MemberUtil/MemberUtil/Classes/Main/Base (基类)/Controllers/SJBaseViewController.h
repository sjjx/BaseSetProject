//
//  SJFatherViewController.h
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJBaseViewController : UIViewController

/**
 *  显示加载中
 */
-(void)showHub;

/**
 *  隐藏加载中
 */
- (void)hideHub;

/**
 *  设置navigationBar color，titile font (默认是红色)
 */
- (void)applyBarTintColorToTheNavigationBar:(UIColor *)barTintColor;

@end
