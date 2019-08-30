//
//  Monther.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/30.
//  Copyright © 2019年 LYP. All rights reserved.
//

#import "Monther.h"

@implementation Monther


-(void)read:(id<ContentProtocol>)object{
    
    NSLog(@"给孩子读书");
    if ([object respondsToSelector:@selector(getContent)]) {
        [object getContent];
    }
    
}

@end
