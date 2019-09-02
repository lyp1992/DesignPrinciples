//
//  BSon.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 实现减法
 实现加法 然后再加100
 */
#import "AParent.h"

NS_ASSUME_NONNULL_BEGIN

@interface BSon : AParent

-(int)funAdd:(int)a withB:(int)b;

@end

NS_ASSUME_NONNULL_END
