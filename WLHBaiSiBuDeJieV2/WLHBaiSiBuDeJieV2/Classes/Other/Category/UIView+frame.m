//
//  UIView+frame.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 05/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

- (void)setWLH_width:(CGFloat)WLH_width {
    CGRect rect = self.frame;
    rect.size.width = WLH_width;
    self.frame = rect;
}

- (CGFloat)WLH_width {
    return self.frame.size.width;
}

- (void)setWLH_height:(CGFloat)WLH_height {
    CGRect rect = self.frame;
    rect.size.height = WLH_height;
    self.frame = rect;
}

- (CGFloat)WLH_height {
    return self.frame.size.height;
}

- (void)setWLH_x:(CGFloat)WLH_x {
    CGRect rect = self.frame;
    rect.origin.x = WLH_x;
    self.frame = rect;
}

- (CGFloat)WLH_x {
    return self.frame.origin.x;
}

- (void)setWLH_y:(CGFloat)WLH_y {
    CGRect rect = self.frame;
    rect.origin.y = WLH_y;
    self.frame = rect;
}

- (CGFloat)WLH_y {
    return self.frame.origin.y;
}

- (void)setWLH_centerX:(CGFloat)WLH_centerX {
    CGPoint center = self.center;
    center.x = WLH_centerX;
    self.center = center;
}

- (CGFloat)WLH_centerX {
    return self.center.x;
}

- (void)setWLH_centerY:(CGFloat)WLH_centerY {
    CGPoint center = self.center;
    center.y = WLH_centerY;
    self.center = center;
}

- (CGFloat)WLH_centerY {
    return self.center.y;
}

@end
