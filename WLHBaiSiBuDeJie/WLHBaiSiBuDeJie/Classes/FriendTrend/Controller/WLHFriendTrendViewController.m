//
//  WLHFriendTrendViewController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 18/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHFriendTrendViewController.h"

@interface WLHFriendTrendViewController ()

@end

@implementation WLHFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // 设置导航栏信息
    [self setUpNavBarItem];
}

- (void)setUpNavBarItem {
    // 导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] addTarget:self action:nil];
    
    // 导航栏状态显示
    self.navigationItem.title = @"我的关注";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
