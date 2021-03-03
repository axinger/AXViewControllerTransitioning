//
//  AXViewController.m
//  AXViewControllerTransitioning
//
//  Created by axinger on 03/03/2021.
//  Copyright (c) 2021 axinger. All rights reserved.
//

#import "AXViewController.h"
#import "AXShowViewController.h"
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
    [btn setTitle:@"弹窗" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
    }];
    
}

- (void)btnAction:(UIButton *)btn {
    AXShowViewController *vc = AXShowViewController.alloc.init;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
