//
//  UIImage+WLHImage.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 01/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "UIImage+WLHImage.h"

@implementation UIImage (WLHImage)

+ (UIImage *)imageOriginalWithImageNamed:(NSString *)imageNamed {
    UIImage *image = [UIImage imageNamed:imageNamed];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
