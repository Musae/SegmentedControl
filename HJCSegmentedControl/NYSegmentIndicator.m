//
//  NYSegmentIndicator.m
//  NYSegmentedControl
//
//  Created by jasmine on 14-7-7.
//  Copyright (c) 2014年 hjc. All rights reserved.//
//  https://github.com/nealyoung/NYSegmentedControl
//

#import "NYSegmentIndicator.h"

@implementation NYSegmentIndicator

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.userInteractionEnabled = NO;
        self.drawsGradientBackground = NO;
        self.opaque = NO;
        self.gradientTopColor = [UIColor clearColor];
        self.gradientBottomColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    if (self.drawsGradientBackground) {
        CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
        gradientLayer.colors = @[(__bridge id)[self.gradientTopColor CGColor],
                                 (__bridge id)[self.gradientBottomColor CGColor]];
    } else {
        self.layer.backgroundColor = [self.backgroundColor CGColor];
    }
}

#pragma mark - Getters and Setters

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = [borderColor CGColor];
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
//    self.layer.cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setDrawsGradientBackground:(BOOL)drawsGradientBackground {
    _drawsGradientBackground = drawsGradientBackground;
    [self setNeedsDisplay];
}

- (void)setGradientTopColor:(UIColor *)gradientTopColor {
    _gradientTopColor = gradientTopColor;
    [self setNeedsDisplay];
}

- (void)setGradientBottomColor:(UIColor *)gradientBottomColor {
    _gradientBottomColor = gradientBottomColor;
    [self setNeedsDisplay];
}

@end
