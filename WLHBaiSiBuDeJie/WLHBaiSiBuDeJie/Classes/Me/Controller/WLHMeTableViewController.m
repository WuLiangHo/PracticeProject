//
//  WLHMeTableViewController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 18/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHMeTableViewController.h"
#import "WLHSettingViewController.h"

@interface WLHMeTableViewController ()

@end

@implementation WLHMeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏信息
    [self setUpNavBarItem];
}

- (void)setUpNavBarItem {
    UIBarButtonItem *nightItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon-click"] addTarget:self action:@selector(nightClick:)];
    UIBarButtonItem *settingItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] addTarget:self action:@selector(settingClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem, nightItem];
    
    self.navigationItem.title = @"我的";
    
}

- (void)nightClick:(UIButton *)button {
    button.selected = !button.selected;
}

- (void)settingClick {
    WLHSettingViewController *setVc = [[WLHSettingViewController alloc] init];
    
    [self.navigationController pushViewController:setVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


@end
