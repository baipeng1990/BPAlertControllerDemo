//
//  BPAlertController.h
//  BPAlertControllerDemo
//
//  Created by BP on 2017/11/21.
//  Copyright © 2017年 baipeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BPAlertController : UIViewController


@property (nonatomic,copy)NSString *titleText;
@property (nonatomic,copy)NSString *messageText;
@property (nonatomic,copy)NSString *cancelText;
@property (nonatomic,copy)NSString *sureText;
@property (nonatomic,copy)void(^buttonAction)(void);

+(instancetype)BPAlertControllerWithTitle:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel sure:(NSString *)sure action:(void (^)(void))buttonAction;


@end
