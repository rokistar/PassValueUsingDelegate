//
//  SecondViewController.m
//  demo5
//
//  Created by Roki on 5/27/15.
//  Copyright (c) 2015 Roki. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加label用于显示传递的值
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 300, 40)];
    label.text = [_delegate value];
    label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:label];
    
    //添加按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 300, 40)];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"ToViewController" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(backFirstViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)backFirstViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
