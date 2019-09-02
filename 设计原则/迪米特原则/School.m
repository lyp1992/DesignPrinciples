//
//  School.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "School.h"
#import "YPClass.h"
@implementation School

-(void)printClass:(NSString *)className{
    
    Class class = NSClassFromString(className);
    YPClass *ypC = [[class alloc]init];
    [ypC printStudent];
}

@end
