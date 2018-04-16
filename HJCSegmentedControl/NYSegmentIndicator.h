//
//  NYSegmentIndicator.h
//  NYSegmentedControl
//
//  Created by jasmine on 14-7-7.
//  Copyright (c) 2014年 hjc. All rights reserved.////
//  https://github.com/nealyoung/NYSegmentedControl
//

#import <UIKit/UIKit.h>

@interface NYSegmentIndicator : UIView

@property (nonatomic) CGFloat cornerRadius;

@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) UIColor *borderColor;

@property (nonatomic) BOOL drawsGradientBackground;
@property (nonatomic) UIColor *gradientTopColor;
@property (nonatomic) UIColor *gradientBottomColor;

@end
