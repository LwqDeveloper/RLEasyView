//
//  ViewController.m
//  RLEasyViewDemo
//
//  Created by apple on 2018/5/21.
//  Copyright © 2018年 Muyang. All rights reserved.
//

#import "ViewController.h"
#import "RLEasyView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *topView = [UIView new].rl_frame(CGRectMake(100, 100, 100, 100));
    topView.rl_cornerRadius(10).rl_borderColor([UIColor blueColor]).rl_borderWidth(1);
    topView.rl_bgColor([UIColor redColor]).rl_addToView(self.view);
    
    UILabel *label = [UILabel new];
    label.rl_frame(CGRectMake(100, 200, 100, 100));
    label.rl_font([UIFont systemFontOfSize:16]).rl_text(@"这是一个lable").rl_textAlignment(NSTextAlignmentLeft);
    label.rl_addToView(self.view);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
