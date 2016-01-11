

//
//  sharedTools.m
//  OCweibo
//
//  Created by Jusive on 16/1/7.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "sharedTools.h"

@implementation sharedTools

+ (AFHTTPSessionManager *)sharedInstance
    {
        static AFHTTPSessionManager *sharedtools = nil;
        static dispatch_once_t instance;
        dispatch_once(&instance, ^{
            sharedtools = [[self alloc] init];
//            sharedtools.baseURL = nil;
            sharedtools.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json",@"text/html", @"text/javascript", nil];
        });
        return sharedtools;
}


+(NSURL *)oauthURL{
    
    NSString *appKey = @"1803610419";
//    NSString *appSecret = @"0510288840b355bae40900e350de33d6";
    NSString *redirectUrl =@"http://www.cnblogs.com/Jusive/";
    NSString *urlString = [NSString stringWithFormat:@"https://api.weibo.com/oauth2/authorize?client_id=%@&redirect_uri=%@",appKey,redirectUrl];
    NSURL *url = [NSURL URLWithString:urlString];
    return url;
    
}
@end
