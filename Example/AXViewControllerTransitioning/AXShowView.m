//
//  AXShowView.m
//  AXViewControllerTransitioning_Example
//
//  Created by 小星星吃KFC on 2021/4/30.
//  Copyright © 2021 axinger. All rights reserved.
//

#import "AXShowView.h"
#import <Masonry/Masonry.h>

@implementation AXShowView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIView *contentView = UIView.alloc.init;
        contentView.backgroundColor = UIColor.orangeColor;
        contentView.layer.cornerRadius = 5;
        [self addSubview:contentView];
        
        UIButton *btn = UIButton.alloc.init;
        [contentView addSubview:btn];
        [btn setTitle:@"我是按钮,点我消失" forState:UIControlStateNormal];
        [btn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        btn.backgroundColor = UIColor.blueColor;
        [btn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
            make.left.mas_equalTo(50);
            make.right.mas_equalTo(-50);
            
            make.height.equalTo(btn.mas_height).mas_offset(60);
        }];
        
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
        }];
        
    }
    return self;
}
-(void)action:(UIButton *)btn{
    if (self.dismissBlock) {
        self.dismissBlock();
    }
}

@end
