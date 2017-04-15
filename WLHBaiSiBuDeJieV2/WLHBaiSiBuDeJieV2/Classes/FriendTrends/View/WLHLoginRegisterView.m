//
//  WLHLoginRegisterView.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 13/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHLoginRegisterView.h"

@interface WLHLoginRegisterView ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;


@end

@implementation WLHLoginRegisterView

+ (instancetype)loginView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

+ (instancetype)registerView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    //[super awakeFromNib];
    UIImage *image = self.loginBtn.currentBackgroundImage;
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    [self.loginBtn setBackgroundImage:image forState:UIControlStateNormal];
}

@end
