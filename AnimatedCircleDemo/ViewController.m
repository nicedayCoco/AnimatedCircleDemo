//
//  ViewController.m
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/25.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "ViewController.h"
#import "GraphicView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GraphicView *view = [[GraphicView alloc]init];
    view.frame = CGRectMake(0, 0, 320, 480);
    view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
