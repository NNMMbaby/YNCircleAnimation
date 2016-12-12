//
//  YNCircleAnimatView.h
//  lepaoquan2016
//
//  Created by Jessica on 16/7/29.
//  Copyright © 2016年 Jessica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YNCircleAnimatView : UIView


/**
 设置颜色
 */
@property (readwrite, nonatomic) UIColor *bounceColor;
/**
 设置半径
 */
@property (readwrite, nonatomic) CGFloat radius;
/**
 设置动画延迟
 */
@property (readwrite, nonatomic) CGFloat delay;
/**
 设置动画持续时间
 */
@property (readwrite, nonatomic) CGFloat duration;


- (void)startAnimating;

- (void)stopAnimating;

@end
