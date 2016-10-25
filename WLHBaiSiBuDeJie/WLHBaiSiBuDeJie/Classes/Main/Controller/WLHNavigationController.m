//
//  WLHNavigationController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 23/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHNavigationController.h"

@interface WLHNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation WLHNavigationController

+ (void)load {
    // IOS10 不建议使用
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    // 设置字体样式
    NSMutableDictionary *arrts = [NSMutableDictionary dictionary];
    arrts[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:arrts];
    // 设置背影图片
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //全屏手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    pan.delegate = self;
    
    [self.view addGestureRecognizer:pan];
    // 禁用系统默认手势
    self.interactivePopGestureRecognizer.enabled = NO;
    
}

// 导航栏返回键设置
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem returnButtonWithImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] addTarget:self action:@selector(rBack) title:@"返回"];
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)rBack {
    [self popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- GestureRecognizer Sourse
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return self.childViewControllers.count > 0;
}

@end
