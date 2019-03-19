//
//  ViewController.m
//  IALayout
//
//  Created by 金峰 on 2019/3/16.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import "ViewController.h"
#import "UIView+IAFrameMaker.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    self.label = [[UILabel alloc] init];
    self.label.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.label];
    
    
    self.label.ia_frame.originY(40).size(80, 80).install();
    NSLog(@"%@",NSStringFromCGRect(self.label.frame));
    
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:1 animations:^{
            [self.label ia_frameMake:^(IAFrameMaker * _Nonnull maker) {
                maker.originY(60);
            }];
        }];
    });
}


@end
