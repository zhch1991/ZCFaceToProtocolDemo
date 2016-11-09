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
#import "ZCGetRequest.h"

@implementation NSObject (ThirdAPIServiceProtocol)
- (void)sendRequestWithURL:(NSString *)url param:(NSString *)param
{
    id service = [ZCGetRequest new];
    ZCThirdServiceManager *manager = [[ZCThirdServiceManager alloc] initWithService:service];
    manager.url = url;
    manager.param = param;
    [manager request];
}
@end
