//
//  SJHelperMacros.h
//  MemberUtil
//
//  Created by WuSiJun on 16/6/23.
//  Copyright © 2016年 IOS移动开发工程吴四军. All rights reserved.
//

#ifndef SJHelperMacros_h
#define SJHelperMacros_h

/**
 *  沙盒路径
 */
#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

/**
 *  获取屏幕宽高
 */
#define Main_Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width       [[UIScreen mainScreen] bounds].size.width

/**
 *  当前版本
 */
#define FSystemVersion          ([[[UIDevice currentDevice] systemVersion] floatValue])
#define DSystemVersion          ([[[UIDevice currentDevice] systemVersion] doubleValue])
#define SSystemVersion          ([[UIDevice currentDevice] systemVersion])

/**
 *  是否iPhone5
 */
#define isiPhone5               ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? \
CGSizeEqualToSize(CGSizeMake(640, 1136), \
[[UIScreen mainScreen] currentMode].size) : \
NO)

/**
 *  是否iPhone4
 */
#define isiPhone4               ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? \
CGSizeEqualToSize(CGSizeMake(640, 960), \
[[UIScreen mainScreen] currentMode].size) : \
NO)

/**
 *  是否iphone6
 */
#define isiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

/**
 *  iphone6Plus
 */
#define isiPhone6Plus ([[UIScreen mainScreen] currentMode].size.width == 1242||[[UIScreen mainScreen] currentMode].size.width == 1125)


/**
 *  RGB颜色转换（16进制->10进制）
 */
#define UIColorFromRGB(rgbValue)\
\
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:1.0]

/**
 *  判断系统的版本
 */
#define TD_SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)


#define UNGetObject(key)    (key ? [[NSUserDefaults standardUserDefaults] objectForKey:key] : nil)

/**
 *  保存和删除通过key值
 */
#define UNSaveObject(obj,key) \
if(obj && key){ \
[[NSUserDefaults standardUserDefaults] setObject:obj forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

#define UNSaveInteger(obj,key) \
if(obj && key){ \
[[NSUserDefaults standardUserDefaults] setInteger:obj forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

#define UNRemoveObject(key) \
if(key){ \
[[NSUserDefaults standardUserDefaults] removeObjectForKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

/**
 *  保存，删除，获取某个对象（一般用于userInfo）
 */
#define UNSaveSerializedObject(obj,key) \
NSData *serialized = [NSKeyedArchiver archivedDataWithRootObject:obj];\
if(serialized){ \
[[NSUserDefaults standardUserDefaults] setObject:serialized forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

#define UNDeletedSerializedObject(key) { [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];\
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

#define UNGetSerializedObject(key)  key ? ([[NSUserDefaults standardUserDefaults] objectForKey:key] ? [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] objectForKey:key]] : nil) : nil

#endif /* SJHelperMacros_h */
