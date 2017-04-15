//
//  UIBarButtonItem+item.h
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 05/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (item)

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image hightImage:(UIImage *)hImage
                                     target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image selImage:(UIImage *)selImage
                                     target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)backItemWithImage:(UIImage *)image hightImage:(UIImage *)hImage
                                target:(id)target action:(SEL)action title:(NSString *)title;
@end
