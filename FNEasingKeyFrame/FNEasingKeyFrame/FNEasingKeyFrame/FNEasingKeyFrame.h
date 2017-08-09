//
//  FNEasingKeyFrame.h
//  FNEasingKeyFrame
//
//  Created by 冯宁 on 2017/8/9.
//  Copyright © 2017年 demo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FNEasingKeyFrameAnimationType) {
    FNEasingKeyFrameAnimationTypeLinearInterpolation = 1,
    
    // Quadratic easing; p^2
    FNEasingKeyFrameAnimationTypeQuadraticEaseIn = 2,
    FNEasingKeyFrameAnimationTypeQuadraticEaseOut = 3,
    FNEasingKeyFrameAnimationTypeQuadraticEaseInOut = 4,
    
    // Cubic easing; p^3
    FNEasingKeyFrameAnimationTypeCubicEaseIn = 5,
    FNEasingKeyFrameAnimationTypeCubicEaseOut = 6,
    FNEasingKeyFrameAnimationTypeCubicEaseInOut = 7,
    
    // Quartic easing; p^4
    FNEasingKeyFrameAnimationTypeQuarticEaseIn = 8,
    FNEasingKeyFrameAnimationTypeQuarticEaseOut = 9,
    FNEasingKeyFrameAnimationTypeQuarticEaseInOut = 10,
    
    // Quintic easing; p^5
    FNEasingKeyFrameAnimationTypeQuinticEaseIn = 11,
    FNEasingKeyFrameAnimationTypeQuinticEaseOut = 12,
    FNEasingKeyFrameAnimationTypeQuinticEaseInOut = 13,
    
    // Sine wave easing; sin(p * PI/2)
    FNEasingKeyFrameAnimationTypeSineEaseIn = 14,
    FNEasingKeyFrameAnimationTypeSineEaseOut = 15,
    FNEasingKeyFrameAnimationTypeSineEaseInOut = 16,
    
    // Circular easing; sqrt(1 - p^2)
    FNEasingKeyFrameAnimationTypeCircularEaseIn = 17,
    FNEasingKeyFrameAnimationTypeCircularEaseOut = 18,
    FNEasingKeyFrameAnimationTypeCircularEaseInOut = 19,
    
    // Exponential easing, base 2
    FNEasingKeyFrameAnimationTypeExponentialEaseIn = 20,
    FNEasingKeyFrameAnimationTypeExponentialEaseOut = 21,
    FNEasingKeyFrameAnimationTypeExponentialEaseInOut = 22,
    
    // Exponentially-damped sine wave easing
    FNEasingKeyFrameAnimationTypeElasticEaseIn = 23,
    FNEasingKeyFrameAnimationTypeElasticEaseOut = 24,
    FNEasingKeyFrameAnimationTypeElasticEaseInOut = 25,
    
    // Overshooting cubic easing;
    FNEasingKeyFrameAnimationTypeBackEaseIn = 26,
    FNEasingKeyFrameAnimationTypeBackEaseOut = 27,
    FNEasingKeyFrameAnimationTypeBackEaseInOut = 28,
    
    // Exponentially-decaying bounce easing
    FNEasingKeyFrameAnimationTypeBounceEaseIn = 29,
    FNEasingKeyFrameAnimationTypeBounceEaseOut = 30,
    FNEasingKeyFrameAnimationTypeBounceEaseInOut = 31
};

@interface FNEasingKeyFrame : NSObject
// 根据总帧数和动画曲线类型直接生成动画帧序列做循环动画
+ (NSArray<NSNumber*>*)circleKeyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number;
// 根据总帧数和动画曲线类型直接生成动画帧序列
+ (NSArray<NSNumber*>*)keyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number;
// 根据当前进度位置与动画曲线类型生成某一帧的位置
+ (double)singleKeyFrameForAnimationType:(FNEasingKeyFrameAnimationType)type withProgressRate:(double)rate;

@end
