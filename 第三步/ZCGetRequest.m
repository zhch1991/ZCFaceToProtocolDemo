//
//  ZCGetRequest.m
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import "ZCGetRequest.h"

@implementation ZCGetRequest

//接收方本来应该遵循ZCThirdService协议的
//但这里因为selector写的是一样的，所以投机取巧了
//但是如果不和协议写成一样的签名，则会crash
//这样一来，服务提供方（接收方）连import都省了
//这里是接收方，所以selector前缀加recv标识
- (void)recvRequestWithURL:(NSString *)url param:(NSString *)param
{
    NSLog(@"url = %@, param = %@", url, param);
}

@end
