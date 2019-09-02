//
//  CommandManager.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

+(instancetype)shareInstance{
    static CommandManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[super allocWithZone:NULL] init];
    });
    return manager;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}
-(NSMutableArray *)arrayCommands{
    if (!_arrayCommands) {
        _arrayCommands = [[NSMutableArray alloc]init];
    }
    return _arrayCommands;
}

-(void)executeCommand:(Command *)cmd completion:(CommondCompletionCallBack)completion{
    if (cmd) {
//        判断命令是否在执行
        if ([self _isExecuteCommod:cmd]) {
            [self.arrayCommands addObject:cmd];
            cmd.completion = completion;
//            执行命令
            [cmd execute];
        }
    }
}

-(void)cancelCommand:(Command *)cmd{
    if (cmd) {
        [self.arrayCommands removeObject:cmd];
         [cmd cancel];
    }
   
}
-(BOOL)_isExecuteCommod:(Command *)cmd{
    if (cmd) {
        for (Command *acmd in self.arrayCommands) {
            if (acmd == cmd) {
                return YES;
            }
        }
    }
    return NO;
}

@end
