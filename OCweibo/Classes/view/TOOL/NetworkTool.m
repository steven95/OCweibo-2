//
//  NetworkTool.m
//  OCweibo
//
//  Created by Jusive on 16/1/7.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "NetworkTool.h"
#import "sharedTools.h"
typedef enum{
    GET,
    POST,
    HEAD
    
}RequestMethod;
@interface NetworkTool ()
-(void)method:(RequestMethod)method urlString:(NSString *)URLString parameters:(NSString *)parameters progress:(void (^)(NSProgress * _Nonnull))uploadProgress success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure;
@end
@implementation NetworkTool

-(void)method:(RequestMethod)method urlString:(NSString *)URLString parameters:(NSString *)parameters progress:(void (^)(NSProgress * _Nonnull))uploadProgress success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure{
    if (method == GET) {
        [self GET:URLString parameters:parameters progress:nil success:success failure:failure];
    }else{
        [self POST:URLString parameters:parameters progress:nil success:success failure:failure];
    }
    
}

@end
