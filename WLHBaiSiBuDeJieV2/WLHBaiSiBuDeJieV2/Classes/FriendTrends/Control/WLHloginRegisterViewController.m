//
//  WLHloginRegisterViewController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 13/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHloginRegisterViewController.h"
#import "WLHLoginRegisterView.h"
#import "WLHQuickLoginView.h"

@interface WLHloginRegisterViewController ()

@property (weak, nonatomic) IBOutlet UIView *middleView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *middleLeading;
@property (weak, nonatomic) IBOutlet UIView *bottomView;

@end

@implementation WLHloginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 登录
    WLHLoginRegisterView *loginView = [WLHLoginRegisterView loginView];
    [self.middleView addSubview:loginView];
    // 注册
    WLHLoginRegisterView *registerView = [WLHLoginRegisterView registerView];
    [self.middleView addSubview:registerView];
    // 快速登录
    WLHQuickLoginView *quickLoginView = [WLHQuickLoginView quickLoginView];
    [self.bottomView addSubview:quickLoginView];
}

// 在此方法设置frame最好，但是此方法会调用多次，千万要注意！！！！！
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    // 登录viewFrame
    self.middleView.subviews[0].frame = CGRectMake(0, 0, self.middleView.WLH_width * 0.5, self.middleView.WLH_height);
    // 注册viewFrame
    self.middleView.subviews[1].frame = CGRectMake(self.middleView.WLH_width * 0.5, 0, self.middleView.WLH_width * 0.5, self.middleView.WLH_height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 退出登录
- (IBAction)canelLoginBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 注册或是登录
- (IBAction)loginOrRegisterClick:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    self .middleLeading.constant = self.middleLeading.constant == 0 ? -self.middleView.WLH_width * 0.5 : 0;
    [UIView animateWithDuration:0.4 animations:^{
        [self.view layoutIfNeeded];
    }];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
