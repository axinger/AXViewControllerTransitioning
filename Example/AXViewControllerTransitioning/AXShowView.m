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
        
        
        
        UILabel *label = UILabel.alloc.init;
        [contentView addSubview:label];
        label.text = @"我是内容";
        
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
            make.left.mas_equalTo(50);
            make.right.mas_equalTo(-50);
        
            make.height.equalTo(label.mas_height).mas_offset(60);
        }];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
        }];
        
    }
    return self;
}

@end
