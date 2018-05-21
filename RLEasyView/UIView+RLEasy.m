//
//  UIView+RLEasy.m
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import "UIView+RLEasy.h"

@implementation UIView (RLEasy)

+ (instancetype (^)(void))rl_new
{
    return ^(void) {
        return [[self alloc] initWithFrame:CGRectZero];
    };
}

- (UIView *(^)(NSInteger t))rl_tag
{
    return ^(NSInteger t) {
        self.tag = t;
        return self;
    };
}

- (UIView *(^)(CGRect f))rl_frame
{
    return ^(CGRect f) {
        self.frame = f;
        return self;
    };
}

- (UIView *(^)(UIColor *c))rl_bgColor
{
    return ^(UIColor *c) {
        self.backgroundColor = c;
        return self;
    };
}

- (UIView *(^)(CGFloat x))rl_cornerRadius
{
    return ^(CGFloat x) {
        self.layer.cornerRadius = x;
        self.layer.masksToBounds = YES;
        return self;
    };
}

- (UIView *(^)(UIColor *c))rl_borderColor
{
    return ^(UIColor *c) {
        self.layer.borderColor = c.CGColor;
        return self;
    };
}

- (UIView *(^)(CGFloat x))rl_borderWidth
{
    return ^(CGFloat x) {
        self.layer.borderWidth = x;
        return self;
    };
}

- (UIView *(^)(UIView *v))rl_addToView
{
    return ^(UIView *v) {
        [v addSubview:self];
        return self;
    };
}

- (UIView *(^)(UIView *v))rl_addSubView
{
    return ^(UIView *v) {
        [self addSubview:v];
        return self;
    };
}

- (UIViewController *(^)(void))rl_viewController
{
    return ^(void) {
        id target = self;
        while (target) {
            target = ((UIResponder*)target).nextResponder;
            if ([target isKindOfClass:[UIViewController class]]) {
                break;
            }
        }
        return target;
    };
}

@end
