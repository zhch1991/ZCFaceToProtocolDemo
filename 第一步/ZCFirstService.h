//
//  ZCFirstService.h
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCFirstService : NSObject

//只是为了测试，为了方便，就全部使用string了
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *param;

- (void)requestFirst;

@end
