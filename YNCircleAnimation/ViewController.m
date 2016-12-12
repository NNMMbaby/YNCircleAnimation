//
//  ViewController.m
//  YNCircleAnimation
//
//  Created by Jessica on 16/12/9.
//  Copyright © 2016年 Jessica. All rights reserved.
//

#import "ViewController.h"
#import "YNCircleAnimatView.h"
#import "YNRippleAnimatView.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIView *bottomView;

@property (weak, nonatomic) IBOutlet UIView *middleRoundView;

@property (nonatomic, retain)UIActivityIndicatorView * activityView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _middleRoundView.layer.masksToBounds = YES;
    _middleRoundView.layer.cornerRadius = _middleRoundView.frame.size.width / 2;
    [self addFirstRoundAnimatView];
    
    [self addSecondRoundAnimatView];

}



///添加上边的中间动图
- (void)addFirstRoundAnimatView{
    
    CGFloat radius =  125.0f;
    
    for (NSInteger i = 0;i < 4; i++) {
        
        YNCircleAnimatView *round = [[YNCircleAnimatView alloc] init];
        _middleRoundView.backgroundColor = [UIColor colorWithRed:1.000 green:0.500 blue:0.000 alpha:1];
        round.bounceColor = [UIColor colorWithRed:1.000 green:0.500 blue:0.000 alpha:0.2 * (i + 1)];
        
        UIView *view = (UIView *)[self.view viewWithTag:12090 + i];
        [view removeFromSuperview];
        round.tag = 12090 + i;
        round.radius = radius - 20 * i;
        round.delay = 1 * (i + 1);
        [round startAnimating];
        
        [_bottomView addSubview:round];
        round.center = _middleRoundView.center;
        [_bottomView addSubview:_middleRoundView];
        
    }
    
}

// 添加下面的雷达水波纹的动图
- (void)addSecondRoundAnimatView{
    
    
    CGFloat maxRadius = [UIScreen mainScreen].bounds.size.width * 0.4;
    
    YNRippleAnimatView *rippleView = [[YNRippleAnimatView alloc] initMinRadius:20 maxRadius:maxRadius];
    
    rippleView.rippleCount = 5;
    rippleView.rippleDuration = 4;
    rippleView.backgroundColor = [UIColor lightGrayColor];
    rippleView.image = [UIImage imageNamed:@"hoot"];
    rippleView.imageSize = CGSizeMake(80, 80);
    rippleView.rippleColor = [UIColor clearColor];
    rippleView.borderWidth = 3;
    rippleView.borderColor = [UIColor lightGrayColor];
    CGFloat x = ([UIScreen mainScreen].bounds.size.width - 80) / 2;
    rippleView.frame = CGRectMake(x, 450, 80 ,80);
    [self.view addSubview:rippleView];
    [rippleView startAnimation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
