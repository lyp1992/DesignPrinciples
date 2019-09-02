//
//  Animal.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 
 单一职责： 根据粒度划分：一个类z负责一个功能，或者一个方法负责一个功能
 **/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

/* 方法方面的单一原则 */
-(void)breath:(NSString *)animal;

-(void)breathWater:(NSString *)animal;

/*
 类方法的单一原则，是fish类负责breathWater,dog类负责breathOil
 **/

@end

NS_ASSUME_NONNULL_END
