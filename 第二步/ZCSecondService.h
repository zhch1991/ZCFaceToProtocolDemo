//
//  ZCSecondService.h
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCSecondService : NSObject

@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *param;

- (void)requestSecond;

@end
