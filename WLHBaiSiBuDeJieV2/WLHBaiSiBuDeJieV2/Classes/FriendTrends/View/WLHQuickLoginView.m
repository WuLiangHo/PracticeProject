//
//  WLHQuickLoginView.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 14/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHQuickLoginView.h"

@implementation WLHQuickLoginView

+ (instancetype)quickLoginView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

@end
