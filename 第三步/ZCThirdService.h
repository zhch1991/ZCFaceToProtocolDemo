//
//  ZCThirdService.h
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZCThirdService <NSObject>
//被动调用方，接口定义
//被动调用方，面向这个接口编程
- (void)recvRequestWithURL:(NSString *)url param:(NSString *)param;
@end
