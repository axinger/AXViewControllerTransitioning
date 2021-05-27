//
//  AXViewController.m
//  AXViewControllerTransitioning
//
//  Created by axinger on 03/03/2021.
//  Copyright (c) 2021 axinger. All rights reserved.
//

#import "AXViewController.h"
#import "AXShowViewController.h"
#import "AXShowUpPopViewController.h"
#import <Masonry/Masonry.h>
@interface AXViewController ()

@end

@implementation AXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = UIButton.alloc.init;
    [self.view addSubview:btn];
    btn.backgroundColor = UIColor.greenColor;
    [btn setTitle:@"中间弹窗,点击空白不消失" forState:UIControlStateNormal];
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 40);
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(120);
        make.centerX.mas_equalTo(0);
    }];
    
    UIButton *btn2 = UIButton.alloc.init;
    [self.view addSubview:btn2];
    btn2.backgroundColor = UIColor.orangeColor;
    [btn2 setTitle:@"下往上弹窗,点击空白消失" forState:UIControlStateNormal];
    btn2.contentEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 40);
    [btn2 addTarget:self action:@selector(btnAction2:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(btn.mas_bottom).mas_equalTo(40);
        make.centerX.mas_equalTo(0);
    }];
    
}

- (void)btnAction:(UIButton *)btn {
    AXShowViewController *vc = AXShowViewController.alloc.init;
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)btnAction2:(UIButton *)btn {
    AXShowUpPopViewController *vc = AXShowUpPopViewController.alloc.init;
    [self presentViewController:vc animated:YES completion:nil];
}
@end
