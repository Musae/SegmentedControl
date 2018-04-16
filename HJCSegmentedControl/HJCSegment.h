//
//  HJCSegment.h
//  HJCSegmentedControl
//
//  Created by jasmine on 14-7-7.
//  Copyright (c) 2014年 hjc. All rights reserved.////
//  https://github.com/nealyoung/NYSegmentedControl
//

#import <UIKit/UIKit.h>

@class HJCSegment;

@interface HJCSegment : UIView

@property (nonatomic) UILabel *titleLabel;

- (instancetype)initWithTitle:(NSString *)title;

@end
