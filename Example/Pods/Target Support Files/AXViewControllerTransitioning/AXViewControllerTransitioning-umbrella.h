#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AXViewControllerTransitioning.h"
#import "AXAlertTransitioningObserver.h"
#import "AXBaseAlertDefine.h"
#import "UIViewController+AXTransitioning.h"
#import "AXAlertCentreAnimation.h"
#import "AXAlerUpwardAnimation.h"
#import "AXPresentationController.h"

FOUNDATION_EXPORT double AXViewControllerTransitioningVersionNumber;
FOUNDATION_EXPORT const unsigned char AXViewControllerTransitioningVersionString[];

