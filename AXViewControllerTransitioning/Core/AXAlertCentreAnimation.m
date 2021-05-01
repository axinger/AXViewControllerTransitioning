//
//  AXAlertCentreAnimation.m
//  AXiOSKitDemo
//
//  Created by mac on 2018/6/4.
//  Copyright © 2018年 AX. All rights reserved.
//

#import "AXAlertCentreAnimation.h"
#import "AXCoreDefine.h"


@implementation AXAlertCentreAnimation

- (NSTimeInterval)transitionDuration:
    (id<UIViewControllerContextTransitioning>)transitionContext
{

    UIViewController* toVC = [transitionContext
        viewControllerForKey:UITransitionContextToViewControllerKey];

    UIViewController* fromVC = [transitionContext
        viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (toVC.isBeingPresented) {
        return AX_ALERT_PRESENTED_TIME;
    } else if (fromVC.isBeingDismissed) {
        return AX_ALERT_DISMISSED_TIME;
    }else{
        return AX_ALERT_PRESENTED_TIME;
    }
}

- (void)animateTransition:
    (id<UIViewControllerContextTransitioning>)transitionContext
{

    UIViewController* toVC = [transitionContext
        viewControllerForKey:UITransitionContextToViewControllerKey];

    UIViewController* fromVC = [transitionContext
        viewControllerForKey:UITransitionContextFromViewControllerKey];

    if (!toVC || !fromVC) {
        return;
    }
    
    UIView* containerView = [transitionContext containerView];
    NSTimeInterval duration = [self transitionDuration:transitionContext];

    if (toVC.isBeingPresented) {
        
        // 控制器对应的view
        UIView* toView =
            [transitionContext viewForKey:UITransitionContextToViewKey];
        
        CGSize toViewSize = containerView.frame.size;
        
        // AXAlertCentreAnimation 里面需要 通过 DataSource 获得需要裁剪的size
        if ([toVC conformsToProtocol:@protocol(AXBaseAlertDataSource)] &&
            [toVC respondsToSelector:@selector(sizeForAlert)]) {
            
            toViewSize = [(id<AXBaseAlertDataSource>)toVC sizeForAlert];
        }
        toView.frame = CGRectMake(containerView.frame.origin.x, containerView.frame.origin.y, toViewSize.width, toViewSize.height);
        
        toView.center = containerView.center;
        
        CGAffineTransform oldTransform = toView.transform;
        toView.transform = CGAffineTransformScale(oldTransform, 0.3, 0.3);
        toView.center = containerView.center;
        [containerView addSubview:toView];

        [UIView animateWithDuration:duration
            animations:^{

                toView.transform = oldTransform;

            }
            completion:^(BOOL finished) {

                [transitionContext
                    completeTransition:![transitionContext transitionWasCancelled]];
            }];
    } else if (fromVC.isBeingDismissed) {

        [UIView animateWithDuration:duration
            animations:^{
                fromVC.view.alpha = 0.0;
            }
            completion:^(BOOL finished) {
                [transitionContext
                    completeTransition:![transitionContext transitionWasCancelled]];
            }];
    } else {
    }
}
@end
