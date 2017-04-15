//
//  WLHMineController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHMineController.h"
#import "WLHSettingController.h"

@interface WLHMineController ()

@end

@implementation WLHMineController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setNavBar];
}

- (void)setNavBar {
    //1.夜间按钮
    UIBarButtonItem *lightItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"mine-sun-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon"] target:self action:@selector(sunMoon:)];
    //2.设置按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"mine-setting-icon"] hightImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
    //3.添加两个按钮到导航栏右边item
    self.navigationItem.rightBarButtonItems = @[settingItem, lightItem];
    //4.设置标题
    self.navigationItem.title = @"我的";
}

- (void)sunMoon:(UIButton *)button {
    button.selected = !button.selected;
}

- (void)setting {
    WLHSettingController *setVC = [[WLHSettingController alloc] init];
    //隐藏底部状态栏
    setVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:setVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}



@end
