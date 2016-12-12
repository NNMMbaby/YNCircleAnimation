//
//  XucgRipple.h
//  XucgRipple
//
//  Created by xucg on 8/31/16.
//  Copyright © 2016 xucg. All rights reserved.
//  Welcome visiting https://github.com/gukemanbu

#import <UIKit/UIKit.h>

@interface XucgRipple : UIView

@property (nonatomic, strong) UIImage   *image;          // 图像
@property (nonatomic, assign) CGSize    imageSize;       // 图像大小，默认为原始图像大小
@property (nonatomic, assign) NSInteger rippleCount;     // 脉冲数量
@property (nonatomic, assign) CGFloat   rippleDuration;  // 脉冲时间
@property (nonatomic, strong) UIColor   *rippleColor;    // 脉冲颜色
@property (nonatomic, strong) UIColor   *borderColor;
@property (nonatomic, assign) CGFloat   borderWidth;

- (instancetype) initMinRadius:(CGFloat)minRadius maxRadius:(CGFloat)maxRadius;
- (void)startAnimation;

@end
