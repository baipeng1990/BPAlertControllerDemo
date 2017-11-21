//
//  ViewController.m
//  BPAlertControllerDemo
//
//  Created by BP on 2017/11/21.
//  Copyright © 2017年 baipeng. All rights reserved.
//

#import "ViewController.h"
#import "BPAlertController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)click:(id)sender {
    BPAlertController *alert = [BPAlertController BPAlertControllerWithTitle:@"提示" message:@"are you ok" cancel:@"NO" sure:@"YES" action:^{
        NSLog(@"呵呵");
    }];
    [self presentViewController:alert animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
