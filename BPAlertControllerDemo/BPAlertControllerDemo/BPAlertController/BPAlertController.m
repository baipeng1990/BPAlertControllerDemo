//
//  BPAlertController.m
//  BPAlertControllerDemo
//
//  Created by BP on 2017/11/21.
//  Copyright © 2017年 baipeng. All rights reserved.
//

#import "BPAlertController.h"

@interface BPAlertController ()
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *suerButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cancleButtonToRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelHeightConstraint;

@end

@implementation BPAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _titleLabel.text = _titleText;
    _messageLabel.text = _messageText;
    [_cancelButton setTitle:_cancelText forState:UIControlStateNormal];
    [_suerButton setTitle:_sureText forState:UIControlStateNormal];
    
    if(self.sureText.length==0||!self.sureText){
        self.suerButton.hidden = YES;
        self.cancleButtonToRight.constant = 0;
    }
    
    if (self.titleText.length ==0 || !self.titleText) {
        self.lineView.hidden = YES;
        self.titleLabelHeightConstraint.constant = 0;
    }
}



- (IBAction)buttonClick:(UIButton *)sender {
    if (sender == self.suerButton && self.buttonAction) {
        _buttonAction();
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}



+(instancetype)BPAlertControllerWithTitle:(NSString *)title message:(NSString *)message cancel:(NSString *)cancel sure:(NSString *)sure action:(void (^)(void))buttonAction{

    BPAlertController *alert = [[BPAlertController alloc] init];
    
    alert.modalPresentationStyle = UIModalPresentationCustom;
    alert.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    alert.titleText = title;
    alert.messageText = message;
    alert.cancelText = cancel&&cancel.length>0 ? cancel : @"取消";
    alert.sureText = sure;
    alert.buttonAction = buttonAction;

    return alert;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
