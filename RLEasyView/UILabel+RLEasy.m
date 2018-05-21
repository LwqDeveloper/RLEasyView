//
//  UILabel+RLEasy.m
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import "UILabel+RLEasy.h"

@implementation UILabel (RLEasy)

- (UILabel *(^)(UIFont *f))rl_font
{
    return ^(UIFont *f) {
        [self setFont:f];
        return self;
    };
}

- (UILabel *(^)(NSString *t))rl_text
{
    return ^(NSString *t) {
        [self setText:t];
        return self;
    };
}

- (UILabel *(^)(UIColor *c))rl_textColor
{
    return ^(UIColor *c) {
        [self setTextColor:c];
        return self;
    };
}

- (UILabel *(^)(NSInteger n))rl_numberOfLines
{
    return ^(NSInteger n) {
        [self setNumberOfLines:n];
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment x))rl_textAlignment
{
    return ^(NSTextAlignment x) {
        [self setTextAlignment:x];
        return self;
    };
}

- (UILabel *(^)(void))rl_sizeToFit
{
    return ^(void) {
        [self sizeToFit];
        return self;
    };
}

- (UILabel *(^)(BOOL b))rl_enabled
{
    return ^(BOOL b) {
        [self setEnabled:b];
        return self;
    };
}

- (UILabel *(^)(BOOL b))rl_userInteraction
{
    return ^(BOOL b) {
        self.userInteractionEnabled = b;
        return self;
    };
}

@end
