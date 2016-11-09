//
//  NSObject+ThirdAPIServiceProtocol.m
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import "NSObject+ThirdAPIServiceProtocol.h"
#import "ZCThirdServiceManager.h"
#import "ZCThirdService.h"

@implementation NSObject (ThirdAPIServiceProtocol)
- (void)sendRequestWithURL:(NSString *)url param:(NSString *)param
{
    //通过反射接触服务提供方的对象耦合
    Class cls = NSClassFromString(@"ZCGetRequest");
    id service = [cls new];
    ZCThirdServiceManager *manager = [[ZCThirdServiceManager alloc] initWithService:service];
    manager.url = url;
    manager.param = param;
    [manager request];
}
@end
