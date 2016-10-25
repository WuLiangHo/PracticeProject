//
//  WLHTabBar.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 21/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHTabBar.h"

@interface WLHTabBar ()

@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation WLHTabBar

- (UIButton *)plusButton {
    if (_plusButton == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        // 自适应大小
        [button sizeToFit];
        
        _plusButton = button;
        [self addSubview:_plusButton];
    }
    return _plusButton;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat btnW = self.wlh_width / (self.items.count + 1);
    CGFloat btnH = self.wlh_height;
    NSInteger i = 0;
    
    for (UIView *tabBarButton in self.subviews) {
        
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == (self.items.count / 2)) {
                i++;
            }
            
            tabBarButton.frame = CGRectMake(btnW * i, 0, btnW, btnH);
            
            i++;
        }
    }
    self.plusButton.center = CGPointMake(self.wlh_width * 0.5, self.wlh_height * 0.5);
}

@end
