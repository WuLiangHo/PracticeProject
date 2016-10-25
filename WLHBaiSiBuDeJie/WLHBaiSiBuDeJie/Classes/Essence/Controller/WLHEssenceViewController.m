//
//  WLHEssenceViewController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 18/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHEssenceViewController.h"

@interface WLHEssenceViewController ()

@end

@implementation WLHEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.设置导航栏barbuttonItem
    [self setUpNavBarItem];
    // Do any additional setup after loading the view.
}

- (void)setUpNavBarItem {
    // 导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] addTarget:self action:@selector(game)];
    // 导航栏右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] addTarget:self action:@selector(random)];
    // 导航栏状态显示
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

- (void)game {
    NSLog(@"game");
}

- (void)random {
    NSLog(@"random");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
