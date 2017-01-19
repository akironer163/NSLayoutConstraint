//
//  ViewController.m
//  001-约束优先级
//
//  Created by HM on 16/10/30.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(NSLayoutConstraint) NSArray *heightConstraints;

@property (weak, nonatomic) IBOutlet UIView *demoView;

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // WWDC 2015 推荐使用的,iOS 8.0 推出的
    if (_demoView.bounds.size.height == 128) {
        [NSLayoutConstraint activateConstraints:_heightConstraints];
    } else {
        [NSLayoutConstraint deactivateConstraints:_heightConstraints];
    }
    
    [UIView animateWithDuration:2 animations:^{
        [self.view layoutIfNeeded];
    }];
}


@end
