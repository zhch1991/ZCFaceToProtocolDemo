//
//  NSObject+ApiServiceProtocol.h
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ApiServiceProtocol

- (void)requestWithURL:(NSString *)url param:(NSString *)param;

@end

@interface NSObject (ApiServiceProtocol)

@end
