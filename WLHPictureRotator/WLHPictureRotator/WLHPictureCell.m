//
//  WLHPictureCell.m
//  WLHPictureRotator
//
//  Created by 何武亮 on 13/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHPictureCell.h"
@interface WLHPictureCell ()

@property (weak, nonatomic) IBOutlet UIImageView *pictureView;


@end

@implementation WLHPictureCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setImage:(UIImage *)image {
    _image = image;
    _pictureView.image = image;
}

@end
