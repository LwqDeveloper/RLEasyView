//
//  UIView+RLEasy.h
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RLEasy)

+ (instancetype (^)(void))rl_new;

- (UIView *(^)(NSInteger t))rl_tag;

- (UIView *(^)(CGRect f))rl_frame;

- (UIView *(^)(UIColor *c))rl_bgColor;

- (UIView *(^)(CGFloat x))rl_cornerRadius;

- (UIView *(^)(UIColor *c))rl_borderColor;

- (UIView *(^)(CGFloat x))rl_borderWidth;

- (UIView *(^)(UIView *v))rl_addToView;

- (UIView *(^)(UIView *v))rl_addSubView;

- (UIViewController *(^)(void))rl_viewController;

@end
