//
//  UITextField+RLEasy.h
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (RLEasy)

- (UITextField *(^)(UIFont *f))rl_font;

- (UITextField *(^)(NSString *t))rl_text;

- (UITextField *(^)(NSString *t))rl_placeholder;

- (UITextField *(^)(UIColor *c))rl_textColor;

- (UITextField *(^)(UIColor *c))rl_placeholderColor;

- (UITextField *(^)(NSTextAlignment a))rl_textAlignment;

- (UITextField *(^)(UITextBorderStyle s))rl_borderStyle;

- (UITextField *(^)(UIView *v,BOOL left))rl_leftRightView;

- (UITextField *(^)(id i))rl_delegate;

@end
