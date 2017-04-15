//
//  WLHNewController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHNewController.h"
#import "WLHRecomTagController.h"

@interface WLHNewController ()

@end

@implementation WLHNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavBar];
}

- (void)setNavBar {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(mainTag)];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

- (void)mainTag {
    WLHRecomTagController *recomTagVc = [[WLHRecomTagController alloc] init];
    [self.navigationController pushViewController:recomTagVc animated:YES];
}
@end
