//
//  YPStudent.m
//  设计原则Tests
//
//  Created by 赖永鹏 on 2019/8/30.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "YPStudent.h"

@implementation YPStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"[self class] = %@",[self class]);// student
        NSLog(@"[super class] = %@",[super class]); // student
        NSLog(@"[self superclass] = %@",[self superclass]); // person
        NSLog(@"[super superclass] = %@",[super superclass]); // person
        
    }
    return self;
}

@end
