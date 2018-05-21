//
//  UITextField+RLEasy.m
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import "UITextField+RLEasy.h"

@implementation UITextField (RLEasy)

- (UITextField *(^)(UIFont *f))rl_font
{
    return ^(UIFont *f) {
        self.font = f;
        return self;
    };
}

- (UITextField *(^)(NSString *t))rl_text
{
    return ^(NSString *t) {
        self.text = t;
        return self;
    };
}

- (UITextField *(^)(NSString *t))rl_placeholder
{
    return ^(NSString *t) {
        self.placeholder = t;
        return self;
    };
}

- (UITextField *(^)(UIColor *c))rl_textColor
{
    return ^(UIColor *c) {
        self.textColor = c;
        return self;
    };
}

- (UITextField *(^)(UIColor *c))rl_placeholderColor
{
    return ^(UIColor *c) {
        [self setValue:c forKeyPath:@"_placeholderLabel.textColor"];
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment a))rl_textAlignment
{
    return ^(NSTextAlignment a) {
        self.textAlignment = a;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle s))rl_borderStyle
{
    return ^(UITextBorderStyle s) {
        self.borderStyle = s;
        return self;
    };
}

- (UITextField *(^)(UIView *v,BOOL left))rl_leftRightView
{
    return ^(UIView *v,BOOL left) {
        if (left) {
            self.leftView = v;
            self.leftViewMode = UITextFieldViewModeAlways;
        } else {
            self.rightView = v;
            self.leftViewMode = UITextFieldViewModeAlways;
        }
        return self;
    };
}

- (UITextField *(^)(id i))rl_delegate
{
    return ^(id i) {
//        self.delegate = i;
        return self;
    };
}

@end
