//
//  WLHTabBarController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHTabBarController.h"
#import "WLHNewController.h"
#import "WLHMineController.h"
#import "WLHEssenceController.h"
#import "WLHPublishController.h"
#import "WLHFriendTrendsController.h"
#import "UIImage+WLHImage.h"
#import "WLHTabBar.h"
#import "WLHNavigationController.h"

@interface WLHTabBarController ()

@end

@implementation WLHTabBarController

+ (void)load {
    // 设置tabBarItem 文字
    UITabBarItem *taBarItem = [UITabBarItem appearanceWhenContainedIn:self, nil];
    //选中状态下
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor blackColor];
    [taBarItem setTitleTextAttributes:attr forState:UIControlStateSelected];
    // 正常情况下
    NSMutableDictionary *attrN = [NSMutableDictionary dictionary];
    attrN[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [taBarItem setTitleTextAttributes:attrN forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 加载创建所有自控制器
    [self setAllChildViewController];
    // 设置按钮内容
    [self setAllTitleButton];
    [self setOwnTabBar];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 所有子控制器
- (void)setAllChildViewController {
    // 精华
    WLHEssenceController *essenceView = [[WLHEssenceController alloc] init];
    WLHNavigationController *nav0 = [[WLHNavigationController alloc] initWithRootViewController:essenceView];
    [self addChildViewController:nav0];
    
    // 新帖
    WLHNewController *newView = [[WLHNewController alloc] init];
    WLHNavigationController *nav1 = [[WLHNavigationController alloc] initWithRootViewController:newView];
    [self addChildViewController:nav1];
    
//    // 发布
//    WLHPublishController *publishView = [[WLHPublishController alloc] init];
//    [self addChildViewController:publishView];
//    
    // 关注
    WLHFriendTrendsController *friendTrendsView = [[WLHFriendTrendsController alloc] init];
    WLHNavigationController *nav2 = [[WLHNavigationController alloc] initWithRootViewController:friendTrendsView];
    [self addChildViewController:nav2];
    
    // 我的
    WLHMineController *mineView = [[WLHMineController alloc] init];
    WLHNavigationController *nav3 = [[WLHNavigationController alloc] initWithRootViewController:mineView];
    [self addChildViewController:nav3];
}

#pragma mark - 设置控制器样式
- (void)setAllTitleButton {
    // 精华
    WLHNavigationController *nav0 = self.childViewControllers[0];
    nav0.tabBarItem.title = @"精华";
    nav0.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav0.tabBarItem.selectedImage = [UIImage imageOriginalWithImageNamed:@"tabBar_essence_click_icon"];
    
    // 新帖
    WLHNavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithImageNamed:@"tabBar_new_click_icon"];
    
    // 发布
//    WLHPublishController *publishView = self.childViewControllers[2];
//    publishView.tabBarItem.image = [UIImage imageOriginalWithImageNamed:@"tabBar_publish_icon"];
//    publishView.tabBarItem.selectedImage = [UIImage imageOriginalWithImageNamed:@"tabBar_publish_click_icon"];
//    publishView.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
//    
    // 关注
    WLHNavigationController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.title = @"关注";
    nav2.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav2.tabBarItem.selectedImage = [UIImage imageOriginalWithImageNamed:@"tabBar-frienTrends_click_icon"];
    
    // 我的
    WLHNavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"我的";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithImageNamed:@"tabBar_me_click_icon"];
    
}

#pragma 自定义tabbar
- (void)setOwnTabBar {
    WLHTabBar *tabBar = [[WLHTabBar alloc] init];
    [self setValue:tabBar forKey:@"tabBar"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

@end
