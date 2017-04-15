//
//  WLHNavigationController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 05/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHNavigationController.h"

@interface WLHNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation WLHNavigationController

+ (void)load {
    // 设置导航栏文字样式
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:18];
    [navBar setTitleTextAttributes:attr];
    
    // 设置导航栏背景图片
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 全屏手势滑动
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    //判定是否根控制器
    pan.delegate = self;
    //取消之前的手势
    self.interactivePopGestureRecognizer.enabled = NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 判断是否是根控制器
    if (self.childViewControllers.count > 0) {
        // 隐藏所有自控制器底部tabbartool
        viewController.hidesBottomBarWhenPushed = YES;
        // 设置所有自控制器返回按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWithImage:[UIImage imageNamed:@"navigationButtonReturn"] hightImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self action:@selector(popVc) title:@"返回"];
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)popVc {
    [self popViewControllerAnimated:YES];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return self.childViewControllers.count > 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
