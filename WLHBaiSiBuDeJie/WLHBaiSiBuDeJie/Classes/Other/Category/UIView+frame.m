//
//  UIView+frame.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 21/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

- (void)setWlh_width:(CGFloat)wlh_width {
    CGRect rect = self.frame;
    rect.size.width = wlh_width;
    self.frame = rect;
}

- (CGFloat)wlh_width {
    return self.frame.size.width;
}

- (void)setWlh_height:(CGFloat)wlh_height {
    CGRect rect = self.frame;
    rect.size.height = wlh_height;
    self.frame = rect;
}

- (CGFloat)wlh_height {
    return self.frame.size.height;
}

- (void)setWlh_x:(CGFloat)wlh_x {
    CGRect rect = self.frame;
    rect.origin.x = wlh_x;
    self.frame = rect;
}

- (CGFloat)wlh_x {
    return self.frame.origin.x;
}

- (void)setWlh_y:(CGFloat)wlh_y {
    CGRect rect = self.frame;
    rect.origin.y = wlh_y;
    self.frame = rect;
}

- (CGFloat)wlh_y {
    return self.frame.origin.y;
}

@end
