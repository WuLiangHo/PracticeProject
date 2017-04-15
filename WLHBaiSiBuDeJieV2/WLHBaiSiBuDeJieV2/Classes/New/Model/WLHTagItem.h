//
//  WLHTagItem.h
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 08/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WLHTagItem : NSObject

// 图标地址
@property (strong, nonatomic) NSString *image_list;
// 订阅名称
@property (strong, nonatomic) NSString *theme_name;
// 订阅数量
@property (strong, nonatomic) NSString *sub_number;

@end
