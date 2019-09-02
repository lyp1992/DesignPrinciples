//
//  BaseClassAOne.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "BaseClassAOne.h"

@implementation BaseClassAOne

-(void)handle{
    
    NSLog(@"处理AOne业务逻辑");
    [super handle];
    NSLog(@"处理完毕Aone业务逻辑");
}

@end
