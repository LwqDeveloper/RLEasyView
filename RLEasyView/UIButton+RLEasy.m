//
//  UIButton+RLEasy.m
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import "UIButton+RLEasy.h"
#import <objc/runtime.h>

static const void *rlCompletionKey = &rlCompletionKey;

@implementation UIButton (RLEasy)

+ (UIButton *(^)(UIButtonType t))rl_buttonType
{
    return ^(UIButtonType t) {
        UIButton *btn = [UIButton buttonWithType:t];
        return btn;
    };
}

- (UIButton *(^)(UIFont *f))rl_titleFont
{
    return ^(UIFont *f) {
        self.titleLabel.font = f;
        return self;
    };
}

- (UIButton *(^)(NSString *t,UIControlState s))rl_title_state
{
    return ^(NSString *t,UIControlState s) {
        [self setTitle:t forState:s];
        return self;
    };
}

- (UIButton *(^)(UIColor *c,UIControlState s))rl_titleColor_state
{
    return ^(UIColor *c,UIControlState s) {
        [self setTitleColor:c forState:s];
        return self;
    };
}

- (UIButton *(^)(UIImage *i,UIControlState s))rl_image_state
{
    return ^(UIImage *i,UIControlState s) {
        [self setImage:i forState:s];
        return self;
    };
}

- (UIButton *(^)(UIImage *i,UIControlState s))rl_bgImage_state
{
    return ^(UIImage *i,UIControlState s) {
        [self setBackgroundImage:i forState:s];
        return self;
    };
}

- (UIButton *(^)(id t,SEL a,UIControlEvents e))rl_target_action_e
{
    return ^(id t, SEL s, UIControlEvents e) {
        [self addTarget:t action:s forControlEvents:e];
        return self;
    };
}

- (UIButton *(^)(id t,UIControlEvents e,void(^completion)(UIButton *b)))rl_target_event_completion
{
    return ^(id t,UIControlEvents e,void(^completion)(UIButton *b)) {
        [self addTarget:self action:@selector(rl_btnTap) forControlEvents:e];
        self.rl_completion = completion;
        return self;
    };
}

- (void)rl_btnTap
{
    if (self.rl_completion) {
        self.rl_completion(self);
    }
}

- (void (^)(UIButton *))rl_completion
{
    return objc_getAssociatedObject(self, rlCompletionKey);
}

- (void)setRl_completion:(void (^)(UIButton *))rl_completion
{
    objc_setAssociatedObject(self, rlCompletionKey, rl_completion, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UIButton *(^)(RLButtonType type,float s))rl_titleImageTypeSpace
{
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.font = self.titleLabel.font;
    titleLabel.text = self.titleLabel.text;
    [titleLabel sizeToFit];
    return ^(RLButtonType type,float s) {
        switch (type) {
            case RLButtonTypeLeftImageRightTitle:
            {
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, s /2.0, 0, -s /2.0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, -s /2.0, 0, s /2.0)];
            }
                break;
            case RLButtonTypeLeftTitleRightImage:
            {
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width -s /2.0, 0, self.imageView.frame.size.width +s/2.0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, titleLabel.frame.size.width +s /2.0, 0, -titleLabel.frame.size.width -s /2.0)];
            }
                break;
            case RLButtonTypeTopImageBottomTitle:
            {
                [self setTitleEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height /2.0 +s /2.0, -self.imageView.frame.size.width /2.0, -self.imageView.frame.size.height /2.0 -s /2.0, self.imageView.frame.size.width /2.0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(-titleLabel.frame.size.height /2.0 -s /2.0, titleLabel.frame.size.width /2.0, titleLabel.frame.size.height /2.0 +s /2.0, -titleLabel.frame.size.width /2.0)];
            }
                break;
            case RLButtonTypeTopTitleBottomImage:
            {
                [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.size.height /2.0 -s /2.0, -self.imageView.frame.size.width /2.0, self.imageView.frame.size.height /2.0 +s /2.0, self.imageView.frame.size.width /2.0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(self.titleLabel.frame.size.height /2.0 +s /2.0, titleLabel.frame.size.width /2.0, -titleLabel.frame.size.height /2.0 -s /2.0, -titleLabel.frame.size.width /2.0)];
            }
                break;
                
            default:
                break;
        }
        return self;
    };
}

@end
