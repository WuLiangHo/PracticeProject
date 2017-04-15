//
//  WLHEssenceController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHEssenceController.h"

@interface WLHEssenceController ()

@end

@implementation WLHEssenceController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    [self setNavBar];
}

- (void)setNavBar {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] hightImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(game)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] hightImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:self action:@selector(random)];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}


- (void)game {
    
}

- (void)random {
    
}

@end
