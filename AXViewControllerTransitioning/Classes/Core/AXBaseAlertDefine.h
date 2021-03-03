//
//  AXBaseAlertDefine.h
//  AXiOSKit
//
//  Created by mac on 2018/6/4.
//  Copyright © 2018年 AX. All rights reserved.
//

#ifndef AXBaseAlertDefine_h
#define AXBaseAlertDefine_h

typedef NS_ENUM(NSUInteger, AXAlertControllerStyle){
    AXAlertControllerStyleUpward = UIAlertControllerStyleActionSheet,// 从下往上
    AXAlertControllerStyleCentre = UIAlertControllerStyleAlert   // 从中间放大弹出
};

#define AX_ALERT_COVER_COLOR [[UIColor blackColor] colorWithAlphaComponent:0.5]

/**presented 动画时间*/
#define AX_ALERT_PRESENTED_TIME 0.3f

/**dismissed 动画时间*/
#define AX_ALERT_DISMISSED_TIME 0.1f

@protocol AXBaseAlertDataSource <NSObject>

@optional

- (CGSize)sizeForAlert;

@end


#endif /* AXBaseAlertDefine_h */
