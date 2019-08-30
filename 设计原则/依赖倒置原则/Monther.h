//
//  Monther.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/30.
//  Copyright © 2019年 LYP. All rights reserved.
//

/*
 依赖倒置原理：本质就是面向接口编程
 上层不能依赖下层 下层可以依赖上层
 **/

#import <Foundation/Foundation.h>
#import "ContentProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Monther : NSObject

// 读书
-(void)read:(id<ContentProtocol>)object;

@end

NS_ASSUME_NONNULL_END
