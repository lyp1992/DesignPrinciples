//
//  Command.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"
@implementation Command

-(void)execute{
    [self done];
}

-(void)cancel{
    self.completion = nil;
}

-(void)done{
    
    dispatch_async(dispatch_get_main_queue(), ^{
       
        if (self->_completion) {
            self->_completion(self);
        }
        
        // 释放
        self.completion = nil;
        [[CommandManager shareInstance].arrayCommands removeObject:self];
    });
}

@end
