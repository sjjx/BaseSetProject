//
//  SJNetworkBase.m
//  MemberUtil
//
//  Created by WuSiJun on 16/6/27.
//  Copyright © 2016年 IOS移动开发工程吴四军QQ :1522561118. All rights reserved.
//

#import "SJNetworkBase.h"
#import <AFNetworking.h>

@implementation SJNetworkBase

/**
 *  单例
 *  @return 实例化对象
 */
+ (instancetype)sharedInstane {
    
    static SJNetworkBase *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [[SJNetworkBase alloc] init];
        
    });
    
    return manager;
}

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
                                   whenFailed:(SJNetworkingFailed)failedBlock {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 20; //超时设置10秒
    
    NSURLSessionDataTask *task = [manager POST:path parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (successedBlock) {
            
            successedBlock(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failedBlock) {
            
            failedBlock(error);
        }
    }];
    
    return task;
    
}

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
                                  whenFailed:(SJNetworkingFailed)failedBlock {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 20; //超时设置10秒
    
    NSURLSessionDataTask *task = [manager GET:path parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (successedBlock) {
            
            successedBlock(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failedBlock) {
            
            failedBlock(error);
        }
    }];
    
    return task;
}

@end
