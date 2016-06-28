//
//  UILabel+SJLabel_Category.h
//  SJLabel
//
//  Created by tuandai on 15/7/7.
//  Copyright (c) 2015年 wsj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SJLabel_Category)


/**
 *  @author SJ, 16-03-18 17:03:30
 *
 *  设置行间距，文本数组，颜色数组，字体大小数组
 *
 *  @param lineSpacing 行间距
 *  @param strArr      字体的不同，进行分割的数组
 *  @param colorArr    颜色不同分割的数组
 *  @param fontArr     字体大小不同分割的数组
 */
- (void)setLineSpacing:(CGFloat)lineSpacing
       piceWiseTextArr:(NSArray *)strArr
          withColorArr:(NSArray *)colorArr
           withFontArr:(NSArray *)fontArr;

/**
 *  @author SJ, 16-03-18 17:03:53
 *
 *  在颜色相同的情况下，设置不同的字体大小！
 *
 *  @param fontArr 字体大小的数组
 *  @param strArr  不同字体大小的文本数组
 */
- (void)setFont:(NSArray *)fontArr withStrArr:(NSArray *)strArr;


/**
 *  @author SJ, 16-03-18 17:03:44
 *
 *  在字体相同的情况，设置不同的字体大小！
 *
 *  @param colorArr 颜色不同的数组
 *  @param strArr   不同颜色大小的文本数组！
 */
- (void)setColor:(NSArray *)colorArr withStrArr:(NSArray *)strArr;

/**
 *  @author SJ, 16-03-18 17:03:01
 *
 *  加载html字符串
 *
 *  @param HtmlString html字符串
 */
- (void)loadHtmlString:(NSString *)HtmlString;


/**
 *  @author SJ, 16-03-18 17:03:16
 *
 *  移除html
 *
 *  @param html html字符串
 *
 *  @return html字符串
 */
- (NSString *)removeHTML:(NSString *)html;

/**
 *  @author SJ, 16-03-18 17:03:37
 *
 *  设置行间距
 *
 *  @param lineSpacing     行间距离
 *  @param attributeString 富文本文本
 */
- (void)setLineSpacing:(CGFloat)lineSpacing withString:(NSString *)attributeString;


/**
 *  @author SJ, 16-03-19 17:03:14
 *
 *  设置行间距
 *
 *  @param lineSpacing 行间距大小
 */
- (void)setLineSpacing:(CGFloat)lineSpacing;

@end
