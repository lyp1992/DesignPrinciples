//
//  BSon.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "BSon.h"

@implementation BSon

/*
 如果此刻我重写了父类的 -(int)funcA:(int )a withB:(int)b;
 内部去实现a + b 那么久破坏了父类原有的逻辑
 */

-(int)funAdd:(int)a withB:(int)b{
    
    return a + b + 100;
}

@end
