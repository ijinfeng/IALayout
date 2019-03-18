//
//  IAFrameMaker.h
//  IALayout
//
//  Created by 金峰 on 2019/3/17.
//  Copyright © 2019年 JinFeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IAFrameMaker : NSObject

- (instancetype)initWithView:(id)view;

- (IAFrameMaker * (^)(CGFloat))originX;

- (IAFrameMaker * (^)(CGFloat))originY;

- (IAFrameMaker * (^)(CGFloat))width;

- (IAFrameMaker * (^)(CGFloat))height;

- (IAFrameMaker * (^)(CGFloat, CGFloat))origin;

- (IAFrameMaker * (^)(CGFloat, CGFloat))size;

- (IAFrameMaker * (^)(CGFloat, CGFloat, CGFloat, CGFloat))rect;

// used to setup frame
- (void (^)(void))install;

@end

NS_ASSUME_NONNULL_END
