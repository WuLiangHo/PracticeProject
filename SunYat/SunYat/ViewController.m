//
//  ViewController.m
//  SunYat
//
//  Created by 何武亮 on 23/11/2016.
//  Copyright © 2016 WuLiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define MAXNUM 100
- (void)viewDidLoad {
    [super viewDidLoad];
    
    char string[MAXNUM];
    char ch;
    NSLog(@"请输入字符串：");
    gets(string);
    printf("请输入需要替换的字符：");
    scanf("%c", &ch);
    [self changeString:string toChar:ch];
    puts(string);
    
}

- (void)changeString:(char *)string toChar:(char)ch {
    for (int i = 0;string[i] != '\0'; i++) {
        if (i%2 == 0) string[i] = ch;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
