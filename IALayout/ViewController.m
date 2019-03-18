//
//  ViewController.m
//  IALayout
//
//  Created by 金峰 on 2019/3/16.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import "ViewController.h"
#import "UIView+IALayout.h"

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
    
    
    self.label.framer.originY(40).size(80, 80).install();
    NSLog(@"%@",NSStringFromCGRect(self.label.frame));
    
    
    
    NSLayoutConstraint *c;
}


@end
