//
//  AXPresentationController.m
//  AXiOSKit
//
//  Created by AXing on 2019/6/26.
//  Copyright © 2019 liu.weixing. All rights reserved.
//

#import "AXPresentationController.h"
#import "AXBaseAlertDefine.h"

@implementation AXPresentationController

- (void)presentationTransitionWillBegin {
    
    [self.presentedViewController.transitionCoordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        
        self.containerView.backgroundColor = AX_ALERT_COVER_COLOR;
//        self.presentedView.backgroundColor = [UIColor clearColor];
        
    } completion:nil];
}

- (void)dismissalTransitionWillBegin {
    
    [self.presentedViewController.transitionCoordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        self.containerView.alpha = 0;
    } completion:nil];
    
}

- (void)dismissalTransitionDidEnd:(BOOL)completed {
    
    
    
    
}

- (BOOL)shouldRemovePresentersView {
    return NO;
}


@end
