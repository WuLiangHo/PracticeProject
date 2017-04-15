//
//  WLHLoginField.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 15/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHLoginField.h"

@implementation WLHLoginField

- (void)awakeFromNib {
    //[super awakeFromNib];
    // 设置文字输入框的光标为白色
    self.tintColor = [UIColor whiteColor];
    // 设置文字输入框的占位符颜色状态
    // 开始
    [self addTarget:self action:@selector(editBegin) forControlEvents:UIControlEventEditingDidBegin];
    // 结束
    [self addTarget:self action:@selector(editEnd) forControlEvents:UIControlEventEditingDidEnd];
    
    // 设置占位符默认颜色 (视频中的快速方法无法运行，因此没写）
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attr];

    
}

- (void)editBegin {
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attr];
}

- (void)editEnd {
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attr];
}

@end
