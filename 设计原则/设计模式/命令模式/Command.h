//
//  Command.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
typedef void(^CommondCompletionCallBack)(Command * _Nullable cmd);

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject

@property (nonatomic, copy) CommondCompletionCallBack completion;

-(void)execute;
-(void)cancel;
-(void)done;

@end

NS_ASSUME_NONNULL_END
