//
//  UIBarButtonItem+barButtonItem.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 22/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "UIBarButtonItem+barButtonItem.h"

@implementation UIBarButtonItem (barButtonItem)

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)hImage addTarget:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:hImage forState:UIControlStateHighlighted];
    [button sizeToFit];
    // 监听按钮
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 用uiview 包装UIButton
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image selImage:(UIImage *)sImage addTarget:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:sImage forState:UIControlStateSelected];
    [button sizeToFit];
    // 监听按钮
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 用uiview 包装UIButton
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)returnButtonWithImage:(UIImage *)image highImage:(UIImage *)hImage addTarget:(id)target action:(SEL)action title:(NSString *)title {
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button setTitle:@"返回" forState:UIControlStateNormal];
    [Button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [Button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [Button setImage:image forState:UIControlStateNormal];
    [Button setImage:hImage forState:UIControlStateHighlighted];
    
    //监听
    [Button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [Button sizeToFit];
    Button.contentEdgeInsets = UIEdgeInsetsMake(0, -25, 0, 0);
    
    UIView *view = [[UIView alloc] initWithFrame:Button.bounds];
    [view addSubview:Button];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
