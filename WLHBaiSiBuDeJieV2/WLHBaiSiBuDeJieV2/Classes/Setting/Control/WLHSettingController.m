//
//  WLHSettingController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 05/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHSettingController.h"

@interface WLHSettingController ()

@end

@implementation WLHSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavBar];
}

- (void)setNavBar {
    self.navigationItem.title = @"设置";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"jump" style:0 target:self action:@selector(jumpIn)];
}

- (void)jumpIn {
    UIViewController *jumpVc = [[UIViewController alloc] init];
    jumpVc.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:jumpVc animated:YES];
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
