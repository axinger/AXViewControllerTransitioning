//
//  AXShowUpPopViewController.m
//  AXViewControllerTransitioning_Example
//
//  Created by 小星星吃KFC on 2021/5/9.
//  Copyright © 2021 axinger. All rights reserved.
//

#import "AXShowUpPopViewController.h"
#import "UIViewController+AXTransitioning.h"
#import <Masonry/Masonry.h>
#import "AXShowView.h"
/**
 * 定义属性 vc中定义一个同名的view替代原来的 aViewClass 需要替代的view
 */
#define AX_REDEFINE_CONTROLLER_VIEW_PROPERTY(aViewClass) @property(nonatomic, strong)aViewClass *view;

/**
 * vc中定义一个同名的view替代原来的 aViewClass 需要替代的view
 */
#define AX_REDEFINE_CONTROLLER_VIEW_IMPL(aViewClass)\
@dynamic view;\
- (void)loadView{\
[super loadView];\
self.view = [[aViewClass alloc]init];\
}\
- (void)setView:(aViewClass *)view{\
[super setView:view];\
}\
- (aViewClass *)view{\
return (aViewClass *)[super view];\
}\

@interface AXShowUpPopViewController ()
AX_REDEFINE_CONTROLLER_VIEW_PROPERTY(AXShowView);
@end

@implementation AXShowUpPopViewController
AX_REDEFINE_CONTROLLER_VIEW_IMPL(AXShowView);
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self ax_alertObserver:^(AXAlertTransitioningObserver *observer) {
            observer.alertControllerStyle = AXAlertControllerStyleUpward;
    }];
    }
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    __weak typeof(self) weakSelf = self;
    self.view.dismissBlock = ^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf dismissViewControllerAnimated:YES completion:nil];
    };
}
/// 调用者自控制是否点击空白页面 消失
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([touches.anyObject.view isEqual:self.view]) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
}

- (void)dealloc {
    NSLog(@"dealloc = %@",self.class);
    
}

@end
