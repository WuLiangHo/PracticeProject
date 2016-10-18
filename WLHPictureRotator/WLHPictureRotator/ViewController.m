//
//  ViewController.m
//  WLHPictureRotator
//
//  Created by 何武亮 on 13/10/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "ViewController.h"
#import "WLHPictureCell.h"

@interface ViewController () <UICollectionViewDataSource>



@end

static NSString *const ID = @"cell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // layout
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    // UICollectionView
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor redColor];
    collectionView.center = self.view.center;
    collectionView.bounds = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    
    [self.view addSubview:collectionView];
    collectionView.dataSource = self;
    
    // register Cell
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([WLHPictureCell class]) bundle:nil] forCellWithReuseIdentifier:ID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WLHPictureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    NSString *imageName = [NSString stringWithFormat:@"%ld", indexPath.item + 1];
    cell.image = [UIImage imageNamed:imageName];
    return cell;
}

@end
