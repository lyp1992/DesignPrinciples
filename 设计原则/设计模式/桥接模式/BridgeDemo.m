//
//  BridgeDemo.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 桥接模式：假如一开始需求是，处理完ClassA 之后，获取ClassB 数据。r突然有一天产品经里说又🈶一中新的classA2，需求也是处理完A之后处理B。突然有一天说classB也有一中新的数据，需求是，classA1,可以处理classB1,2 这个时候怎么办。
     这个时候我们就可以引出桥接模式。
 
 **/

#import "BridgeDemo.h"
#import "BaseClassB.h"
#import "BaseClassA.h"

#import "BaseClassAOne.h"
#import "BaseClassATwo.h"
#import "BaseClassBOne.h"
#import "BaseClassBTwo.h"

@interface BridgeDemo ()

@property (nonatomic, strong) BaseClassB *objcB;

@property (nonatomic, strong) BaseClassA *objcA;

@end

@implementation BridgeDemo

-(void)fetch{
    
/**
 A1 -> B1,B2
 A2 -> B1,B2
 
 可以实现数据的多种组合
 
 **/
    
    self.objcA = [[BaseClassAOne alloc]init];
    
    self.objcB = [[BaseClassBOne alloc]init];
    self.objcA.objcB = self.objcB;
    
    [self.objcA handle];
}

@end
