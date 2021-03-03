//
//  AXShowViewController.m
//  AXAlertTransitioningObserver_Example
//
//  Created by 小星星吃KFC on 2021/2/27.
//  Copyright © 2021 axinger. All rights reserved.
//

#import "AXShowViewController.h"
#import "UIViewController+AXTransitioning.h"
#import <Masonry/Masonry.h>
@interface AXShowViewController ()

@end

@implementation AXShowViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self ax_alertObserver:^(AXAlertTransitioningObserver *observer) {
//            observer.alertControllerStyle = AXAlertControllerStyleUpward;
            observer.alertControllerStyle = AXAlertControllerStyleCentre;
    }];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIView *contentView = UIView.alloc.init;
    contentView.backgroundColor = UIColor.orangeColor;
    contentView.layer.cornerRadius = 5;
    [self.view addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.height.width.mas_equalTo(200);
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
