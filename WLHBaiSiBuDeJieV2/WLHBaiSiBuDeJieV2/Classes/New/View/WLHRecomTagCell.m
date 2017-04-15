//
//  WLHRecomTagCell.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 08/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHRecomTagCell.h"
#import "WLHTagItem.h"
#import <UIImageView+WebCache.h>

@interface WLHRecomTagCell ()
@property (weak, nonatomic) IBOutlet UIImageView *tagImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numLabel;


@end

@implementation WLHRecomTagCell

- (void)setItem:(WLHTagItem *)item {
    _item = item;
    [_tagImage sd_setImageWithURL:[NSURL URLWithString:item.image_list] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"] options:SDWebImageCacheMemoryOnly completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        // 裁剪图片
        // 开启图文
        UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
        // 设置路径
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
        [path addClip];
        [image drawAtPoint:CGPointZero];
        image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _tagImage.image = image;
        
    }];
    _nameLabel.text = item.theme_name;
    // 修改显示样式
    NSInteger num = item.sub_number.integerValue;
    NSString *numStr = [NSString stringWithFormat:@"%ld人订阅", num];
    if (num >= 10000) {
        numStr = [NSString stringWithFormat:@"%.1f万人订阅", num / 10000.0];
        numStr = [numStr stringByReplacingOccurrencesOfString:@".0" withString:@""];
    }
    _numLabel.text = numStr;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // ios9-->
//    _tagImage.layer.cornerRadius = 30;
//    _tagImage.layer.masksToBounds = YES;
    
    //self.layoutMargins = UIEdgeInsetsZero;
}

- (void)setFrame:(CGRect)frame {
    // 设置cell底部边线
    frame.size.height -= 1;
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
