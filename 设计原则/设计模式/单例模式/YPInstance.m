//
//  YPInstance.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "YPInstance.h"

@implementation YPInstance

+(id)shareInstance{
    static YPInstance *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        为什么调用super，如果用self，会调用自己的allocwithzone，造成循环引用、
        instance = [[super allocWithZone:NULL]init];
//        instance = [[self alloc]init]; // 如果重写了allocwithzone，在这么写会循环引用
    });
    return instance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}


@end
