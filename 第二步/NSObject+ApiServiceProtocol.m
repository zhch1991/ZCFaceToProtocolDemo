//
//  NSObject+ApiServiceProtocol.m
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import "NSObject+ApiServiceProtocol.h"
#import "ZCSecondService.h"

@implementation NSObject (ApiServiceProtocol)
- (void)requestWithURL:(NSString *)url param:(NSString *)param
{
    ZCSecondService *serSecond = [ZCSecondService new];
    serSecond.url = url;
    serSecond.param = param;
    [serSecond requestSecond];
}
@end
