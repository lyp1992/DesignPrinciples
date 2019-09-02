//
//  ClassA.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 接口隔离原则：一个类不需要依赖他不需要的接口
 
 比如：接口定义类中有方法1，2，3，4，5.
 classA 需要123
 ClassB 需要123
 ClassC 需要12345
 
 那么对于classA 和classB 来说，45 是他们不需要依赖的方法
 **/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject

@end

NS_ASSUME_NONNULL_END
