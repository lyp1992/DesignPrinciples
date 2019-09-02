//
//  ViewController.m
//  设计原则
//
//  Created by 赖永鹏 on 2019/8/30.
//  Copyright © 2019年 LYP. All rights reserved.
//

#import "ViewController.h"

#import "Monther.h"
#import "Book.h"
#import "Paper.h"

#import "YPPerson.h"
#import "YPStudent.h"

#import "Animal.h"

#import "School.h"
#import "YPClass.h"
#import "BridgeDemo.h"

#import "YPInstance.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    依赖倒置原则
//    Monther *monther = [[Monther alloc]init];
//    Book *book = [[Book alloc]init];
//    Paper *paper = [[Paper alloc]init];
//
//    [monther read:book];
//    [monther read:paper];
    
//    单一原则
    Animal *animal = [[Animal alloc]init];
    [animal breath:@"🐂"];
    [animal breathWater:@"🐟"];
    
//    迪米特法则
    School *school = [[School alloc]init];
    [school printClass:@"YPClass"];
    
    
//    桥接模式
    BridgeDemo *bridge = [[BridgeDemo alloc]init];
    [bridge fetch];
    
//    单例模式
    YPInstance *instance = [YPInstance shareInstance];
    
//    YPStudent *stu = [[YPStudent alloc]init];
////
//    BOOL res1 = [[NSObject class] isKindOfClass:[NSObject class]];// 类方法：找metaclass  // 1
//    BOOL res2 = [[NSObject class] isMemberOfClass:[NSObject class]];//
//    BOOL res3 = [[YPPerson class] isKindOfClass:[YPPerson class]];
//    BOOL res4 = [[YPPerson class] isMemberOfClass:[YPPerson class]];
////
//    NSLog(@"%d %d %d %d",res1,res2,res3,res4);
////    [[[self class] class] class]  // 不管有多少个class 都是self的类
//    NSLog(@"%@ %@ %s",[YPPerson class],[NSObject class],object_getClassName([NSObject class]));
    
    
//    实现 完成任务一，任务二之后 完成任务三
//    dispatch_group_t group = dispatch_group_create();
////    dispatch_queue_t queue= dispatch_queue_create("myqueue", DISPATCH_QUEUE_CONCURRENT); // 任务一和任务2并发
//    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_SERIAL); // 任务 一和任务2 串行
//    dispatch_group_async(group, queue, ^{
//        for (int i= 0; i<20; i++) {
//            NSLog(@" i = %d",i);
//        }
//    });
//    dispatch_group_async(group, queue, ^{
//        for (int i= 20; i<40; i++) {
//            NSLog(@" k = %d",i);
//            if (i == 30) {
//                break;
//            }
//        }
//
//    });
//    dispatch_group_notify(group, queue, ^{
//        NSLog(@"任务3");
//    });
    
    
}
/*
+(BOOL)memberOfClass:(id)cls{// 类方法，调用object_getclass
 slefCls = objec_getClass(self)
 if (selfCls == cls) {
 return YES;
    }
 return NO
}
 
 -(BOOL)memberOfClass:(id)cls{ //实例方法，调用【self class】
 selfCls = [self class]
 if (selfCls == cls) {
 return YES;
 }
 return NO
 }
 
 +(BOOL)kindOfClass:(id)cls{ // 类方法 调用getclass
 
 for （class selfCls = object_getClass(self);selfcls;selfCls = selfCls->superClass）{
 if (selfCls == cls) {
 return YES;
 }
 return NO
 }
 }
 
 -(BOOL)kindOfClass:(id)cls{ // 类方法 调用class
 
 for （class selfCls = [self class];selfcls;selfCls = selfCls->superClass）{
 if (selfCls == cls) {
 return YES;
 }
 return NO
 }
 }
 */

@end
