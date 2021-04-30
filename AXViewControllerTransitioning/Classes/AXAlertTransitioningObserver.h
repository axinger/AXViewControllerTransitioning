//
//  AXAlertTransitioningObserver.h
//  AXiOSKit
//
//  Created by 小星星吃KFC on 2020/11/27.
//

#import <UIKit/UIKit.h>
#import "AXBaseAlertDefine.h"
NS_ASSUME_NONNULL_BEGIN

@interface AXAlertTransitioningObserver : NSObject<UIViewControllerTransitioningDelegate>

/// 转场动画样式
@property (nonatomic, assign)AXAlertControllerStyle alertControllerStyle;

@end

NS_ASSUME_NONNULL_END
