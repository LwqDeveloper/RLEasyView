//
//  UIImageView+RLEasy.m
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import "UIImageView+RLEasy.h"

@implementation UIImageView (RLEasy)

+ (UIImageView *(^)(UIImage *i))rl_image
{
    return ^(UIImage *i) {
        UIImageView *v = [[UIImageView alloc] initWithImage:i];
        return v;
    };
}

- (UIImageView *(^)(UIImage *i))rl_image
{
    return ^(UIImage *i) {
        self.image = i;
        return self;
    };
}

- (UIImageView *(^)(UIViewContentMode M))rl_contentMode
{
    return ^(UIViewContentMode M) {
        self.contentMode = M;
        return self;
    };
}

@end
