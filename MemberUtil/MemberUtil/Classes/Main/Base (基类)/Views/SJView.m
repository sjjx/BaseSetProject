//
//  SJView.m
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import "SJView.h"

@implementation SJView

- (void)awakeFromNib {
    self.translatesAutoresizingMaskIntoConstraints = NO;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return self;
}

@end
