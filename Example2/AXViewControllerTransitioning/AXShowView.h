//
//  AXShowView.h
//  AXViewControllerTransitioning_Example
//
//  Created by 小星星吃KFC on 2021/4/30.
//  Copyright © 2021 axinger. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AXShowView : UIView
@property(nonatomic, copy) void(^dismissBlock)(void);
@end

NS_ASSUME_NONNULL_END
