//
//  UILabel+RLEasy.h
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (RLEasy)

- (UILabel *(^)(UIFont *f))rl_font;

- (UILabel *(^)(NSString *t))rl_text;

- (UILabel *(^)(UIColor *c))rl_textColor;

- (UILabel *(^)(NSInteger n))rl_numberOfLines;

- (UILabel *(^)(NSTextAlignment x))rl_textAlignment;

- (UILabel *(^)(void))rl_sizeToFit;

- (UILabel *(^)(BOOL b))rl_enabled;

- (UILabel *(^)(BOOL b))rl_userInteraction;

@end
