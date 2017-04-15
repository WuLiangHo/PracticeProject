//
//  WLHAdItem.h
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 08/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WLHAdItem : NSObject

// 广告图片地址
@property (nonatomic, strong) NSString *w_picurl;
// 广告跳转界面地址
@property (nonatomic, strong) NSString *ori_curl;
// 图片宽和高
@property (nonatomic, assign) CGFloat w;
@property (nonatomic, assign) CGFloat h;

@end
