//
//  Paper.h
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/30.
//  Copyright © 2019年 LYP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContentProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Paper : NSObject<ContentProtocol>

-(void)getContent;

@end

NS_ASSUME_NONNULL_END
