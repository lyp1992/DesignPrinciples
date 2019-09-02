//
//  BaseClassA.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/9/1.
//  Copyright © 2019 LYP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseClassB.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseClassA : NSObject

//桥接的核心
@property (nonatomic, strong) BaseClassB *objcB;

-(void)handle;

@end

NS_ASSUME_NONNULL_END
