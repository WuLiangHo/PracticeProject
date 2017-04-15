//
//  WLHQuickButton.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 14/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHQuickButton.h"

@implementation WLHQuickButton

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 按钮图片位置
    self.imageView.WLH_y = 0;
    self.imageView.WLH_centerX = self.WLH_width * 0.5;
    
    // label位置
    self.titleLabel.WLH_y = self.WLH_height - self.titleLabel.WLH_height;
    // 根据文字自动调整label宽度
    [self.titleLabel sizeToFit];
    self.titleLabel.WLH_centerX = self.WLH_width * 0.5;
}

@end
