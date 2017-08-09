//
//  PathView.m
//  FNEasingKeyFrame
//
//  Created by 冯宁 on 2017/8/9.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "PathView.h"

@interface PathView ()
@property (nonatomic, strong) NSArray<NSNumber*>* points;
@end

@implementation PathView

- (instancetype)initWithPoints:(NSArray<NSNumber*>*)points {
    if (self = [super init]) {
        _points = points;
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 1;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat h = rect.size.height;
    CGFloat w = rect.size.width;
    NSInteger count = _points.count;
    CGFloat dis = w / count;
    for (int i = 0; i < _points.count - 1; i++) {
        CGContextAddArc(context, dis * i, (1 - _points[i].doubleValue) * h, dis * 0.8, 0, M_PI * 2, 0);
        CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
        CGContextFillPath(context);
    }
}

@end
