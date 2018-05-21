//
//  UIButton+RLEasy.h
//  PaoPao
//
//  Created by muyang on 2018/3/6.
//  Copyright © 2018年 mi_Fei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RLButtonType) {
    RLButtonTypeLeftImageRightTitle = 0,
    RLButtonTypeLeftTitleRightImage,
    RLButtonTypeTopImageBottomTitle,
    RLButtonTypeTopTitleBottomImage
};

@interface UIButton (RLEasy)

@property (nonatomic, copy) void(^rl_completion)(UIButton *b);

+ (UIButton *(^)(UIButtonType t))rl_buttonType;

- (UIButton *(^)(UIFont *f))rl_titleFont;

- (UIButton *(^)(NSString *t,UIControlState s))rl_title_state;

- (UIButton *(^)(UIColor *c,UIControlState s))rl_titleColor_state;

- (UIButton *(^)(UIImage *i,UIControlState s))rl_image_state;

- (UIButton *(^)(UIImage *i,UIControlState s))rl_bgImage_state;

- (UIButton *(^)(id t,SEL a,UIControlEvents e))rl_target_action_e;

- (UIButton *(^)(id t,UIControlEvents e,void(^completion)(UIButton *b)))rl_target_event_completion;

/**
 type: 标题图片位置
 centerSpace: 中间间隙
 */
- (UIButton *(^)(RLButtonType type,float s))rl_titleImageTypeSpace;

@end
