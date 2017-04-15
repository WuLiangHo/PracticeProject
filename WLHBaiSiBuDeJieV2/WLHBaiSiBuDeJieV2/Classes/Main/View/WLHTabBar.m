//
//  WLHTabBar.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 05/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHTabBar.h"

@interface WLHTabBar ()

@property (nonatomic, weak) UIButton *publishButton;

@end

@implementation WLHTabBar

- (UIButton *)publishButton {
    if (_publishButton == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [button sizeToFit];
        _publishButton = button;
        [self addSubview:button];
    }
    return _publishButton;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger count = self.items.count + 1;
    CGFloat btnW = self.WLH_width / count;
    CGFloat btnH = self.WLH_height;
    CGFloat btnX = 0;
    int i = 0;
//    NSLog(@"%@", self.subviews);
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) i += 1;
            btnX = btnW * i;
            tabBarButton.frame = CGRectMake(btnX, 0, btnW, btnH);
            i++;
        }
    }
    self.publishButton.center = CGPointMake(self.WLH_width * 0.5, self.WLH_height * 0.5);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
