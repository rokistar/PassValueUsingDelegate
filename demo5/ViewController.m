//
//  ViewController.m
//  demo5
//
//  Created by Roki on 5/27/15.
//  Copyright (c) 2015 Roki. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <secondViewControllerDelegate>{
    UITextField *_textField;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 300, 40)];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"ToSecondViewController" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toSecondViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //添加textField
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 300, 40)];
    _textField.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_textField];

}
- (void)toSecondViewController {
    SecondViewController *second = [[SecondViewController alloc] init];
    //设置SecondViewController的代理为ViewController自己
    second.delegate = self;
    [self presentViewController:second animated:YES completion:nil];
}
//实现代理方法
-(NSString *)value {
    return _textField.text;
}

@end
