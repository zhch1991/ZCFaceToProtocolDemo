//
//  ViewController.m
//  faceToAPI
//
//  Created by zhangchu on 16/11/9.
//  Copyright © 2016年 eyrh. All rights reserved.
//

#import "ViewController.h"
//First
#import "ZCFirstService.h"

//Second
#import "NSObject+ApiServiceProtocol.h"
#import "NSObject+ThirdAPIServiceProtocol.h"

@interface ViewController ()<ApiServiceProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    [self testFirst];
    //    [self testSecond];
    [self testThird];
}

//最基本的写法测试
- (void)testFirst
{
    //正常调用request时，调用者需要依赖ZCFirstService对象，高度耦合
    //当业务变动时，两处都得改
    ZCFirstService *serFirst = [ZCFirstService new];
    serFirst.url = @"www.123.com";
    serFirst.param = @"456";
    [serFirst requestFirst];
}

- (void)testSecond
{
    //以接口依赖取代了对象依赖，解除了调用者和ZCSecondService的耦合
    //通过接口的定义，调用者不需要依赖ZCSecondService对象，也不需了解其有哪些属性
    //即使调用者或被调用者需要重构，调用逻辑也不受任何影响，调用接口比访问对象属性更可靠
    //但这样只解除了一般耦合：调用方是接口，但server提供方还是对象依赖
    [self requestWithURL:@"www.123.com" param:@"456"];
}

- (void)testThird
{
    //被调用端（提供服务端）也是面向接口的
    //这样就相当于做了一个中间转换层
    //调用端通过依赖接口取代了依赖对象
    //被调用的服务端也通过依赖接口取代了依赖对象
    [self sendRequestWithURL:@"www.123.com" param:@"456"];
}

@end
