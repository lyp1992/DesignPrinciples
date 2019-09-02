//
//  School.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 迪米特法则：尽量降低类与类之间的耦合
 比如：打印学校所有班级内的学生名字
 那么多余学校来说，他不需要知道每个学生的名字，他只需要知道班级名称就可以。具体的学生名字交给班级处理
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface School : NSObject

-(void)printClass:(NSString *)className;

@end

NS_ASSUME_NONNULL_END
