//
//  NSObject+ThirdAPIServiceProtocol.h
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ThirdAPIServiceProtocol)
//主动调用方，接口定义
//主动调用方，面向这个接口编程
//加到基类的类目里只是为了调用少写代码，方便
- (void)sendRequestWithURL:(NSString *)url param:(NSString *)param;
@end
