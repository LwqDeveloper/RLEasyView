//
//  UIImageView+RLEasy.h
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (RLEasy)

+ (UIImageView *(^)(UIImage *i))rl_image;

- (UIImageView *(^)(UIImage *i))rl_image;

- (UIImageView *(^)(UIViewContentMode M))rl_contentMode;

@end
