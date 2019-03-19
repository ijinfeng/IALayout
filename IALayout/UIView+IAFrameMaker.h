//
//  UIView+IAFrameMaker.h
//  IALayout
//
//  Created by 金峰 on 2019/3/19.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class IAFrameMaker;

@interface UIView (IAFrameMaker)

// you need to call install() after setup values
- (IAFrameMaker *)ia_frame;

- (void)ia_frameMake:(void(^)(IAFrameMaker *maker))make;

@end


@interface IAFrameMaker : NSObject

- (instancetype)initWithView:(id)view;

- (IAFrameMaker * (^)(CGFloat))originX;

- (IAFrameMaker * (^)(CGFloat))originY;

- (IAFrameMaker * (^)(CGFloat))width;

- (IAFrameMaker * (^)(CGFloat))height;

- (IAFrameMaker * (^)(CGFloat, CGFloat))origin;

- (IAFrameMaker * (^)(CGFloat, CGFloat))size;

- (IAFrameMaker * (^)(CGFloat, CGFloat, CGFloat, CGFloat))rect;

- (void (^)(void))reset;

// used to setup frame
- (void (^)(void))install;

@end

NS_ASSUME_NONNULL_END
