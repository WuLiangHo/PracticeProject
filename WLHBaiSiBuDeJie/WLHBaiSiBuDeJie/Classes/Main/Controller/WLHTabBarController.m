//
//  WLHTabBarController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 18/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHTabBarController.h"
#import "WLHNewViewController.h"
#import "WLHEssenceViewController.h"
#import "WLHMeTableViewController.h"
#import "WLHPublishViewController.h"
#import "WLHFriendTrendViewController.h"
#import "UIImage+Image.h"
#import "WLHTabBar.h"
#import "WLHNavigationController.h"

@interface WLHTabBarController ()

@end

@implementation WLHTabBarController

+ (void)load {
    // 获取哪个类中UITabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    // 设置按钮选中标题的颜色：富文本：描述一个文字颜色，字体，阴影，空心，图文混排
    // 创建一个描述文本属性的字典
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    // 设置字体尺寸：只在设置正常状态下， 才会有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.添加子控制器（5个子控制器）-> 自定义控制器 -> 划分项目文件结构
    [self setupAllChildViewController];
    
    // 2.设置tabBar上按钮内容 -> 有对应的子控制器的tabBarItem属性
    [self setupAllTitleButton];
    
    // 3. 设置自定义taBar
    [self setupAllTabBar];
}

#pragma mark - 添加所有自控制器
- (void)setupAllChildViewController {
    // 精华
    WLHEssenceViewController *essenceVc = [[WLHEssenceViewController alloc] init];
    WLHNavigationController *nav = [[WLHNavigationController alloc] initWithRootViewController:essenceVc];
    [self addChildViewController:nav];
    
    // 新帖
    WLHNewViewController *newVc = [[WLHNewViewController alloc] init];
    WLHNavigationController *nav1 = [[WLHNavigationController alloc] initWithRootViewController:newVc];
    [self addChildViewController:nav1];
    
    // 发布
    WLHPublishViewController *publishVc = [[WLHPublishViewController alloc] init];
    [self addChildViewController:publishVc];
    
    // 关注
    WLHFriendTrendViewController *ftVc = [[WLHFriendTrendViewController alloc] init];
    WLHNavigationController *nav2 = [[WLHNavigationController alloc] initWithRootViewController:ftVc];
    [self addChildViewController:nav2];
    
    // 我
    WLHMeTableViewController *meVc = [[WLHMeTableViewController alloc] init];
    WLHNavigationController *nav3 = [[WLHNavigationController alloc] initWithRootViewController:meVc];
    [self addChildViewController:nav3];
}

// 设置tabBar上所有按钮内容
- (void)setupAllTitleButton {
    // 0: nav
    WLHNavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    
    // 快速生成一个没有渲染的图片
    nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_essence_click_icon"];
    
    // 1.新帖
    WLHNavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName
                                     :@"tabBar_new_click_icon"];
    
//    // 2.发布
//    WLHPublishViewController *publishVc = self.childViewControllers[2];
//    publishVc.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
//    publishVc.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_publish_click_icon"];
    
    // 3.关注
    WLHNavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"关注";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_friendsTrends_click_icon"];
    
    // 4.我
    WLHNavigationController *nav4 = self.childViewControllers[4];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_me_click_icon"];
    
}

- (void)setupAllTabBar {
    WLHTabBar *tabBar = [[WLHTabBar alloc] init];
    [self setValue:tabBar forKey:@"tabBar"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
