//
//  CommandManager.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

/*
 命令模式：包含1.发送者 2.c命令管理类 3. 命令类  4. 接收者
 **/

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommandManager : NSObject

@property (nonatomic, strong) NSMutableArray<Command *> *arrayCommands;

+(instancetype)shareInstance;
//执行命令
-(void)executeCommand:(Command *)cmd completion:(CommondCompletionCallBack)completion;
//取消命令
-(void)cancelCommand:(Command *)cmd;

@end

NS_ASSUME_NONNULL_END
