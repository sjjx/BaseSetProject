//
//  UIView+AAAd.h
//  TuanDaiV4
//
//  Created by Arlexovincy on 16/4/9.
//  Copyright © 2016年 Dee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AAAd)

@property (nonatomic) CGFloat left;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat top;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  size;        ///< Shortcut for frame.size.

/**
 *  @author AndreaArlex, 16-04-09 11:04:55
 *
 *  设置圆角
 *
 *  @param radius 圆角角度
 */
- (void)cornerRadius:(float)radius;

@end
