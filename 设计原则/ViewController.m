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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Monther *monther = [[Monther alloc]init];
    Book *book = [[Book alloc]init];
    Paper *paper = [[Paper alloc]init];
    
    [monther read:book];
    [monther read:paper];
    
}


@end
