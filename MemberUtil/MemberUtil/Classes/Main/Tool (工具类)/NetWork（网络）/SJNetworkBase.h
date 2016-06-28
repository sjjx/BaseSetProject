//
//  SJNetworkBase.h
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SJNetworkingSuccessed)(id json);
typedef void (^SJNetworkingFailed)(NSError *error);

@interface SJNetworkBase : NSObject

/**
 *  单例
 *  @return 实例化对象
 */

+ (instancetype)sharedInstane;

/**
 *  Post请求任务
 *
 *  @param path           post的路径
 *  @param parameter      post的参数
 *  @param successedBlock 成功后的处理
 *  @param failedBlock    失败后的处理
 *
 *  @return post任务对象
 */
- (NSURLSessionDataTask *)postRequestWithPath:(NSString*)path
                                    parameter:(NSDictionary*)parameter
                                whenSuccessed:(SJNetworkingSuccessed)successedBlock
                                   whenFailed:(SJNetworkingFailed)failedBlock;

/**
 *  Get请求任务
 *
 *  @param path           get的路径
 *  @param parameter      get参数
 *  @param successedBlock 成功后的处理
 *  @param failedBlock    失败后的处理
 *
 *  @return get任务对象
 */
- (NSURLSessionDataTask *)getRequestWithPath:(NSString*)path
                                    parameter:(NSDictionary*)parameter
                                whenSuccessed:(SJNetworkingSuccessed)successedBlock
                                   whenFailed:(SJNetworkingFailed)failedBlock;



@end
