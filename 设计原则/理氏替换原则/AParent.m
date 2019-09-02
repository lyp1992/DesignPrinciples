//
//  AParent.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 里氏替换原则：通俗的讲就是子类可以扩展父类的功能，但是尽量不要去重写父类的功能。
 **/

#import "AParent.h"

@implementation AParent

-(int)funcA:(int)a withB:(int)b{
    
    return a - b;
}

@end
