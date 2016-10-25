//
//  WLHADViewController.m
//  WLHBaiSiBuDeJie
//
//  Created by 何武亮 on 24/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "WLHADViewController.h"



@interface WLHADViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;
@property (weak, nonatomic) IBOutlet UIView *adContentView;

@end

@implementation WLHADViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpLaunchImageView];
}

- (void)setUpLaunchImageView {
    if (iphone6P7P) {
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-Portrait-736h@3x"];
    } else if (iphone67) {
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-667h"];
    } else if (iphone5) {
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-568h"];
    } else if (iphone4) {
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-700"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
