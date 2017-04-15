//
//  WLHFriendTrendsController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHFriendTrendsController.h"
#import "WLHloginRegisterViewController.h"

@interface WLHFriendTrendsController ()

@end

@implementation WLHFriendTrendsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setNavBar];
}

- (void)setNavBar {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] hightImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(recomMent)];
    self.navigationItem.title = @"我的关注";
}

- (void)recomMent {
    
}

- (IBAction)loginBtn:(id)sender {
    // 显示登录注册界面
    WLHloginRegisterViewController *loginVC = [[WLHloginRegisterViewController alloc] init];
    [self presentViewController:loginVC animated:YES completion:nil];
}

@end
