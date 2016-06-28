//
//  UILabel+SJLabel_Category.m
//  SJLabel
//
//  Created by tuandai on 15/7/7.
//  Copyright (c) 2015年 wsj. All rights reserved.
//

#import "UILabel+SJLabel_Category.h"

@implementation UILabel (SJLabel_Category)

- (void)setLineSpacing:(CGFloat)lineSpacing
       piceWiseTextArr:(NSArray *)strArr
          withColorArr:(NSArray *)colorArr
           withFontArr:(NSArray *)fontArr
{
    int length = 0;
    id obj;
    NSEnumerator *enumerator=[strArr objectEnumerator];
    
    NSMutableString *mutableString = [NSMutableString string];
    while (obj=[enumerator nextObject])
    {
        [mutableString appendString:[NSString stringWithFormat:@"%@",obj]];
    }
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:mutableString];
    
    for (int i = 0; i<strArr.count; i++) {
        [attributedString addAttributes:
         @{NSForegroundColorAttributeName:colorArr[i],
           NSFontAttributeName:fontArr[i]} range:NSMakeRange(length, [strArr[i] length])];
        
        length += [strArr[i] length];
    }
    
    if (lineSpacing != 0) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:lineSpacing];
        [attributedString addAttribute:NSParagraphStyleAttributeName
                                 value:paragraphStyle
                                 range:NSMakeRange(0, [self.attributedText.string length])];
    }
    self.attributedText = attributedString;
}

- (void)setFont:(NSArray *)fontArr withStrArr:(NSArray *)strArr {
    
    int length = 0;
    id obj;
    NSEnumerator *enumerator=[strArr objectEnumerator];
    
    NSMutableString *mutableString = [NSMutableString string];
    while (obj=[enumerator nextObject])
    {
        [mutableString appendString:[NSString stringWithFormat:@"%@",obj]];
    }
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:mutableString];
    
    for (int i = 0; i<strArr.count; i++) {
        [attributedString addAttributes:
         @{NSFontAttributeName:fontArr[i]} range:NSMakeRange(length, [strArr[i] length])];
        
        length += [strArr[i] length];
    }
    
    self.attributedText = attributedString;
    
    
}

- (void)setColor:(NSArray *)colorArr withStrArr:(NSArray *)strArr {
    
    int length = 0;
    id obj;
    NSEnumerator *enumerator=[strArr objectEnumerator];
    
    NSMutableString *mutableString = [NSMutableString string];
    while (obj=[enumerator nextObject])
    {
        [mutableString appendString:[NSString stringWithFormat:@"%@",obj]];
    }
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:mutableString];
    
    for (int i = 0; i<strArr.count; i++) {
        [attributedString addAttributes:@{NSForegroundColorAttributeName:colorArr[i]}
                                  range:NSMakeRange(length, [strArr[i] length])];
        
        length += [strArr[i] length];
    }
    
    self.attributedText = attributedString;
    
}

- (void)loadHtmlString:(NSString *)HtmlString
{
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithData:
                                   [HtmlString dataUsingEncoding:NSUnicodeStringEncoding]
                                                                   options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType}
                                                        documentAttributes:nil
                                                                     error:nil];
    self.attributedText = attrStr;
}


- (NSString *)removeHTML:(NSString *)html {
    
    NSArray *components = [html componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    NSMutableArray *componentsToKeep = [NSMutableArray array];
    for (int i = 0; i < [components count]; i = i + 2) {
        [componentsToKeep addObject:[components objectAtIndex:i]];
    }
    NSString *plainText = [componentsToKeep componentsJoinedByString:@""];
    
    return plainText;
    
}


- (void)setLineSpacing:(CGFloat)lineSpacing withString:(NSString *)attributeString {
    if (attributeString.length>0) {
        NSMutableAttributedString *MutableAttribute = [[NSMutableAttributedString alloc] initWithString:attributeString];
        NSMutableParagraphStyle *paragraphStyle     = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineBreakMode:NSLineBreakByTruncatingTail];
        [paragraphStyle setLineSpacing:lineSpacing];
        [MutableAttribute addAttribute:NSParagraphStyleAttributeName
                                 value:paragraphStyle
                                 range:NSMakeRange(0, [self.attributedText.string length])];
        
        self.attributedText = MutableAttribute;
    }
}

- (void)setLineSpacing:(CGFloat)lineSpacing {
    NSString *attributeString = self.text;
    if (attributeString.length>0) {
        NSMutableAttributedString *MutableAttribute = [[NSMutableAttributedString alloc] initWithString:attributeString];
        NSMutableParagraphStyle *paragraphStyle     = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineBreakMode:NSLineBreakByTruncatingTail];
        [paragraphStyle setLineSpacing:lineSpacing];
        [MutableAttribute addAttribute:NSParagraphStyleAttributeName
                                 value:paragraphStyle
                                 range:NSMakeRange(0, [self.attributedText.string length])];
        
        
        self.attributedText = MutableAttribute;
    }
}

@end

