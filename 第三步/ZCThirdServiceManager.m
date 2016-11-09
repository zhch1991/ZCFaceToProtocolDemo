//
//  ZCThirdServiceManager.m
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import "ZCThirdServiceManager.h"
#import "NSObject+ThirdAPIServiceProtocol.h"
#import "ZCThirdService.h"

@interface ZCThirdServiceManager()

@property (nonatomic, strong) id service;

@end

@implementation ZCThirdServiceManager

- (instancetype)initWithService:(id)service
{
    if(self = [super init])
    {
        self.service = service;
    }
    return self;
}
- (void)request
{
    [self.service recvRequestWithURL:self.url param:self.param];
}

@end
