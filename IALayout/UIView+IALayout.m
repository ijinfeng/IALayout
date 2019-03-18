//
//  UIView+IALayout.m
//  IALayout
//
//  Created by 金峰 on 2019/3/18.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import "UIView+IALayout.h"
#import <objc/runtime.h>

@implementation UIView (IALayout)

- (IAFrameMaker *)framer {
    IAFrameMaker *_maker = objc_getAssociatedObject(self, _cmd);
    if (!_maker) {
        _maker = [[IAFrameMaker alloc] initWithView:self];
        objc_setAssociatedObject(self, _cmd, _maker, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return _maker;
}

- (IAConstraintMaker *)builder {
    return nil;
}

@end
