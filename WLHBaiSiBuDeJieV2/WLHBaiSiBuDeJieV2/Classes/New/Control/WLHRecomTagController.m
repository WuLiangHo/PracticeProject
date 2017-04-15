//
//  WLHRecomTagController.m
//  WLHBaiSiBuDeJieV2
//
//  Created by 何武亮 on 08/04/2017.
//  Copyright © 2017 WuLiang. All rights reserved.
//

#import "WLHRecomTagController.h"

#import "WLHTagItem.h"
#import "WLHRecomTagCell.h"

#import <MJExtension/MJExtension.h>
#import <AFNetworking/AFNetworking.h>
#import <SVProgressHUD/SVProgressHUD.h>

static NSString * const ID = @"cell";

@interface WLHRecomTagController ()

@property (strong, nonatomic) NSArray *itemAry;
@property (weak, nonatomic) AFHTTPSessionManager *mgr;

@end

@implementation WLHRecomTagController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 加载数据
    [self loadData];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"WLHRecomTagCell" bundle:nil] forCellReuseIdentifier:ID];
    
    // 清空tableview分割线内边距
   // self.tableView.separatorInset = UIEdgeInsetsZero;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = WLHColor(220, 220, 221);
    
    // 正在加载提示窗口
    [SVProgressHUD showWithStatus:@"Loading"];
}

- (void)loadData {
    // 获取数据
    self.mgr = [AFHTTPSessionManager manager];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"a"] = @"tag_recommend";
    parameters[@"action"] = @"sub";
    parameters[@"c"] = @"topic";
    
    [self.mgr GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSArray * _Nullable responseObject) {
        // 写入plist
        [responseObject writeToFile:@"/Users/WuLinagHo/Documents/Xcode/GitHub/PracticeProject/WLHBaiSiBuDeJieV2/WLHBaiSiBuDeJieV2/Classes/New/tag.plist" atomically:YES];
        // 数据存入数组
        self.itemAry = [WLHTagItem mj_objectArrayWithKeyValuesArray:responseObject];
        
        // 删除加载提示窗口
        [SVProgressHUD dismiss];
        
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemAry.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WLHRecomTagCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    WLHTagItem *item = self.itemAry[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    // 以防网络太慢，后退关闭加载窗口，取消网络请求
    [SVProgressHUD dismiss];
    [self.mgr.tasks makeObjectsPerformSelector:@selector(cancel)];
}

@end
