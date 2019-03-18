//
//  IAFrameMaker.m
//  IALayout
//
//  Created by 金峰 on 2019/3/17.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import "IAFrameMaker.h"

@interface IAFrameMaker ()

@property(nonatomic, weak) UIView *view;

@property (nonatomic, assign) CGFloat x;

@property (nonatomic, assign) CGFloat y;

@property (nonatomic, assign) CGFloat w;

@property (nonatomic, assign) CGFloat h;

@end

@implementation IAFrameMaker

- (instancetype)initWithView:(UIView *)view {
    self = [super init];
    if (self) {
        _view = view;
        CGRect r = view.frame;
        _x = r.origin.x;
        _y = r.origin.y;
        _w = r.size.width;
        _h = r.size.height;
    }
    return self;
}

- (void)frameBuilder {
    self.view.frame = CGRectMake(self.x, self.y, self.w, self.h);
}

- (IAFrameMaker * _Nonnull (^)(CGFloat))originX {
    return ^id(CGFloat x) {
        self.x = x;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat))originY {
    return ^IAFrameMaker *(CGFloat y) {
        self.y = y;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat))width {
    return ^IAFrameMaker *(CGFloat w) {
        self.w = w;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat))height {
    return ^IAFrameMaker *(CGFloat h) {
        self.h = h;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat, CGFloat))origin {
    return ^IAFrameMaker * (CGFloat x, CGFloat y) {
        self.x = x;
        self.y = y;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat, CGFloat))size {
    return ^IAFrameMaker * (CGFloat w, CGFloat h) {
        self.w = w;
        self.h = h;
        return self;
    };
}

- (IAFrameMaker * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))rect {
    return ^IAFrameMaker * (CGFloat x, CGFloat y, CGFloat w, CGFloat h) {
        self.x = x;
        self.y = y;
        self.w = w;
        self.h = h;
        return self;
    };
}

- (void (^)(void))install {
    return ^ {
        [self frameBuilder];
    };
}

@end
