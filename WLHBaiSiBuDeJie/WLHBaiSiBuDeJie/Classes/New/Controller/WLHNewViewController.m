//
//  WLHNewViewController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 18/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHNewViewController.h"

@interface WLHNewViewController ()

@end

@implementation WLHNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    //设置导航栏信息
    [self setUpNavBarItem];
}

// 设置导航栏信息
- (void)setUpNavBarItem {
    // 导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] addTarget:self action:nil];
    // 导航栏状态显示
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
