//
//  Class.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/31.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "YPClass.h"

@implementation YPClass

-(void)printStudent{
    
    for (int i = 0; i< 10; i++) {
        NSLog(@"%@",[NSString stringWithFormat:@"student%d",i ]);
    }
}

@end
