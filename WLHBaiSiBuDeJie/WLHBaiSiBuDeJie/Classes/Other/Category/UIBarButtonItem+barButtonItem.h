//
//  UIBarButtonItem+barButtonItem.h
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 22/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (barButtonItem)

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)hImage addTarget:(id)target action:(SEL)action;

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image selImage:(UIImage *)sImage addTarget:(id)target action:(SEL)action;

+ (UIBarButtonItem *)returnButtonWithImage:(UIImage *)image highImage:(UIImage *)hImage addTarget:(id)target action:(SEL)action title:(NSString *)title;
@end
