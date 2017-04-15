//
//  WLHAdViewController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 06/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHAdViewController.h"
#import "WLHTabBarController.h"

#import "WLHAdItem.h"

#import <AFNetworking/AFNetworking.h>
#import <UIImageView+WebCache.h>
#import <MJExtension/MJExtension.h>

#define code2 @"phcqnauGuHYkFMRquANhmgN_IauBThfqmgKsUARhIWdGULPxnz3vndtkQW08nau_I1Y1P1Rhmhwz5Hb8nBuL5HDknWRhTA_qmvqVQhGGUhI_py4MQhF1TvChmgKY5H6hmyPW5RFRHzuET1dGULnhuAN85HchUy7s5HDhIywGujY3P1n3mWb1PvDLnvF-Pyf4mHR4nyRvmWPBmhwBPjcLPyfsPHT3uWm4FMPLpHYkFh7sTA-b5yRzPj6sPvRdFhPdTWYsFMKzuykEmyfqnauGuAu95Rnsnbfknbm1QHnkwW6VPjujnBdKfWD1QHnsnbRsnHwKfYwAwiu9mLfqHbD_H70hTv6qnHn1PauVmynqnjclnj0lnj0lnj0lnj0lnj0hThYqniuVujYkFhkC5HRvnB3dFh7spyfqnW0srj64nBu9TjYsFMub5HDhTZFEujdzTLK_mgPCFMP85Rnsnbfknbm1QHnkwW6VPjujnBdKfWD1QHnsnbRsnHwKfYwAwiuBnHfdnjD4rjnvPWYkFh7sTZu-TWY1QW68nBuWUHYdnHchIAYqPHDzFhqsmyPGIZbqniuYThuYTjd1uAVxnz3vnzu9IjYzFh6qP1RsFMws5y-fpAq8uHT_nBuYmycqnau1IjYkPjRsnHb3n1mvnHDkQWD4niuVmybqniu1uy3qwD-HQDFKHakHHNn_HR7fQ7uDQ7PcHzkHiR3_RYqNQD7jfzkPiRn_wdKHQDP5HikPfRb_fNc_NbwPQDdRHzkDiNchTvwW5HnvPj0zQWndnHRvnBsdPWb4ri3kPW0kPHmhmLnqPH6LP1ndm1-WPyDvnHKBrAw9nju9PHIhmH9WmH6zrjRhTv7_5iu85HDhTvd15HDhTLTqP1RsFh4ETjYYPW0sPzuVuyYqn1mYnjc8nWbvrjTdQjRvrHb4QWDvnjDdPBuk5yRzPj6sPvRdgvPsTBu_my4bTvP9TARqnam"

@interface WLHAdViewController ()

// app启动背景
@property (weak, nonatomic) IBOutlet UIImageView *launchImage;
// 广告视图
@property (weak, nonatomic) IBOutlet UIView *adView;
// 广告图片
@property (weak, nonatomic) UIImageView *adImageView;
// 广告数据
@property (strong, nonatomic) WLHAdItem *adItem;
// 跳转按钮
@property (weak, nonatomic) IBOutlet UIButton *jumpBtn;
// 跳转定时器
@property (weak, nonatomic) NSTimer *timer;

@end

@implementation WLHAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置启动背景图片
    [self setUpLaunchImage];
    // 设置广告图片
    [self loadAdData];
    
    // 跳转时间
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeJump) userInfo:nil repeats:YES];
}

- (void)setUpLaunchImage {
    if (iphone6p7s) {
        self.launchImage.image = [UIImage imageNamed:@"LaunchImage-800-Portrait-736h@3x"];
    } else if (iphone66s7) {
        self.launchImage.image = [UIImage imageNamed:@"LaunchImage-800-667h"];
    } else if (iphone5) {
        self.launchImage.image = [UIImage imageNamed:@"LaunchImage-568h"];
    } else {
        self.launchImage.image = [UIImage imageNamed:@"LaunchImage-700"];
    }
}

- (void)loadAdData {
    // text/html
    //1.创建请求会话管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    //2. 拼接参数
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"code2"] = code2;
    //3. 发送请求
    [mgr GET:@"http://mobads.baidu.com/cpro/ui/mads.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        // 请求数据-》解析数据》展示数据
        //NSLog(@"%@",responseObject);
        // 把数据写入文件
        [responseObject writeToFile:@"/Users/WuLinagHo/Documents/Xcode/GitHub/PracticeProject/WLHBaiSiBuDeJieV2/WLHBaiSiBuDeJieV2/ad.plist" atomically:YES];
        
        // 取出数据
        NSDictionary *dict = [responseObject[@"ad"] lastObject];
        // 字典转模型
        self.adItem = [WLHAdItem mj_objectWithKeyValues:dict];
        // 设置广告图片
        CGFloat h = WLHScreenW / self.adItem.w * self.adItem.h;
        self.adImageView.frame = CGRectMake(0, 0, WLHScreenW, h);
        [self.adImageView sd_setImageWithURL:[NSURL URLWithString:self.adItem.w_picurl]];
        
        NSLog(@"%@", self.adItem);
        
    }failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@0", error);
    }];
    
}

- (UIImageView *)adImageView {
    if (_adImageView == nil) {
        UIImageView *view = [[UIImageView alloc] init];
        [self.adView addSubview:view];
        
        // 添加广告跳转手势
        UITapGestureRecognizer *tapgtr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapT)];
        [view addGestureRecognizer:tapgtr];
        view.userInteractionEnabled = YES;
        _adImageView = view;
    }
    return _adImageView;
}

- (void)tapT {
    // 广告跳转界面
    NSURL *url = [NSURL URLWithString:self.adItem.ori_curl];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (IBAction)jumpClick:(id)sender {
    // 跳转到内容界面
    WLHTabBarController *tabVc = [[WLHTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabVc;
    // 消除计时器
    [self.timer invalidate];
}

- (void)timeJump {
    static int i = 3;
    [self.jumpBtn setTitle:[NSString stringWithFormat:@"跳转(%d)", i] forState:UIControlStateNormal];
    // 时间为0跳转
    if (i == 0) {
        [self jumpClick:nil];
    }
    i--;
}

@end
