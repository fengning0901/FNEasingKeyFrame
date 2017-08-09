//
//  FNEasingKeyFrame.m
//  FNEasingKeyFrame
//
//  Created by 冯宁 on 2017/8/9.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "FNEasingKeyFrame.h"

@implementation FNEasingKeyFrame

+ (NSArray<NSNumber*>*)keyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number {
    
    NSAssert(number > 0, @"Number Of key frames must be Greater than 0");
    
    NSMutableArray* mArray = [NSMutableArray array];
    for (double i = 0; i < number; i ++) {
        [mArray addObject:@([FNEasingKeyFrame singleKeyFrameForAnimationType:type withProgressRate:1.0 / number * i])];
    }
    
    return mArray.copy;
}

+ (double)singleKeyFrameForAnimationType:(FNEasingKeyFrameAnimationType)type withProgressRate:(double)rate {
    
    switch (type) {
        case FNEasingKeyFrameAnimationTypeLinearInterpolation:
            return [FNEasingKeyFrame LinearInterpolationWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuadraticEaseIn:
            return [FNEasingKeyFrame QuadraticEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuadraticEaseOut:
            return [FNEasingKeyFrame QuadraticEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuadraticEaseInOut:
            return [FNEasingKeyFrame QuadraticEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCubicEaseIn:
            return [FNEasingKeyFrame CubicEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCubicEaseOut:
            return [FNEasingKeyFrame CubicEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCubicEaseInOut:
            return [FNEasingKeyFrame CubicEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuarticEaseIn:
            return [FNEasingKeyFrame QuarticEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuarticEaseOut:
            return [FNEasingKeyFrame QuarticEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuarticEaseInOut:
            return [FNEasingKeyFrame QuarticEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuinticEaseIn:
            return [FNEasingKeyFrame QuinticEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuinticEaseOut:
            return [FNEasingKeyFrame QuinticEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeQuinticEaseInOut:
            return [FNEasingKeyFrame QuinticEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeSineEaseIn:
            return [FNEasingKeyFrame SineEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeSineEaseOut:
            return [FNEasingKeyFrame SineEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeSineEaseInOut:
            return [FNEasingKeyFrame SineEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCircularEaseIn:
            return [FNEasingKeyFrame CircularEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCircularEaseOut:
            return [FNEasingKeyFrame CircularEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeCircularEaseInOut:
            return [FNEasingKeyFrame CircularEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeExponentialEaseIn:
            return [FNEasingKeyFrame ExponentialEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeExponentialEaseOut:
            return [FNEasingKeyFrame ExponentialEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeExponentialEaseInOut:
            return [FNEasingKeyFrame ExponentialEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeElasticEaseIn:
            return [FNEasingKeyFrame ElasticEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeElasticEaseOut:
            return [FNEasingKeyFrame ElasticEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeElasticEaseInOut:
            return [FNEasingKeyFrame ElasticEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBackEaseIn:
            return [FNEasingKeyFrame BackEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBackEaseOut:
            return [FNEasingKeyFrame BackEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBackEaseInOut:
            return [FNEasingKeyFrame BackEaseInOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBounceEaseIn:
            return [FNEasingKeyFrame BounceEaseInWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBounceEaseOut:
            return [FNEasingKeyFrame BounceEaseOutWithP:rate];
            
        case FNEasingKeyFrameAnimationTypeBounceEaseInOut:
            return [FNEasingKeyFrame BounceEaseInOutWithP:rate];
            
        default:
            return 0;
    }

}

// MARK: Linear interpolation (no easing)
+ (double)LinearInterpolationWithP:(double)p {
    return p;
}

// MARK: Quadratic easing; p^2
+ (double)QuadraticEaseInWithP:(double)p {
    return p * p;
}

+ (double)QuadraticEaseOutWithP:(double)p {
    return -(p * (p - 2));
}

+ (double)QuadraticEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 2 * p * p;
    } else {
        return (-2 * p * p) + (4 * p) - 1;
    }
}

// MARK: Cubic easing; p^3
+ (double)CubicEaseInWithP:(double)p {
    return p * p * p;
}

+ (double)CubicEaseOutWithP:(double)p {
    double f = p - 1;
    return f * f * f + 1;
}

+ (double)CubicEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 4 * p * p * p;
    } else {
        double f = ((2 * p) - 2);
        return 0.5 * f * f * f + 1;
    }
}

// MARK: Quartic easing; p^4
+ (double)QuarticEaseInWithP:(double)p {
    return p * p * p * p;
}

+ (double)QuarticEaseOutWithP:(double)p {
    double f = (p - 1);
    return f * f * f * (1 - p) + 1;
}

+ (double)QuarticEaseInOutWithP:(double)p {
    if(p < 0.5) {
        return 8 * p * p * p * p;
    } else {
        double f = (p - 1);
        return -8 * f * f * f * f + 1;
    }
}

// MARK: Quintic easing; p^5
+ (double)QuinticEaseInWithP:(double)p {
    return p * p * p * p * p;
}

+ (double)QuinticEaseOutWithP:(double)p {
    double f = (p - 1);
    return f * f * f * f * f + 1;
}

+ (double)QuinticEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 16 * p * p * p * p * p;
    } else {
        double f = ((2 * p) - 2);
        return  0.5 * f * f * f * f * f + 1;
    }
}

// MARK: Sine wave easing; sin(p * PI/2)
+ (double)SineEaseInWithP:(double)p {
    return sin((p - 1) * M_PI_2) + 1;
}

+ (double)SineEaseOutWithP:(double)p {
    return sin(p * M_PI_2);
}

+ (double)SineEaseInOutWithP:(double)p {
    return 0.5 * (1 - cos(p * M_PI));
}

// MARK: Circular easing; sqrt(1 - p^2)
+ (double)CircularEaseInWithP:(double)p {
    return 1 - sqrt(1 - (p * p));
}

+ (double)CircularEaseOutWithP:(double)p {
    return sqrt((2 - p) * p);
}

+ (double)CircularEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 0.5 * (1 - sqrt(1 - 4 * (p * p)));
    } else {
        return 0.5 * (sqrt(-((2 * p) - 3) * ((2 * p) - 1)) + 1);
    }
}

// MARK: Exponential easing, base 2
+ (double)ExponentialEaseInWithP:(double)p {
    return (p == 0.0) ? p : pow(2, 10 * (p - 1));
}

+ (double)ExponentialEaseOutWithP:(double)p {
    return (p == 1.0) ? p : 1 - pow(2, -10 * p);
}

+ (double)ExponentialEaseInOutWithP:(double)p {
    if (p == 0.0 || p == 1.0) {
        return p;
    }
    if (p < 0.5) {
        return 0.5 * pow(2, (20 * p) - 10);
    } else {
        return -0.5 * pow(2, (-20 * p) + 10) + 1;
    }
}

// MARK: Exponentially-damped sine wave easing
+ (double)ElasticEaseInWithP:(double)p {
    return sin(13 * M_PI_2 * p) * pow(2, 10 * (p - 1));
}

+ (double)ElasticEaseOutWithP:(double)p {
    return sin(-13 * M_PI_2 * (p + 1)) * pow(2, -10 * p) + 1;
}

+ (double)ElasticEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 0.5 * sin(13 * M_PI_2 * (2 * p)) * pow(2, 10 * ((2 * p) - 1));
    } else {
        return 0.5 * (sin(-13 * M_PI_2 * ((2 * p - 1) + 1)) * pow(2, -10 * (2 * p - 1)) + 2);
    }
}

// MARK: Overshooting cubic easing
+ (double)BackEaseInWithP:(double)p {
    return p * p * p - p * sin(p * M_PI);
}

+ (double)BackEaseOutWithP:(double)p {
    double f = (1 - p);
    return 1 - (f * f * f - f * sin(f * M_PI));
}

+ (double)BackEaseInOutWithP:(double)p {
    if (p < 0.5) {
        double f = 2 * p;
        return 0.5 * (f * f * f - f * sin(f * M_PI));
    } else {
        double f = (1 - (2*p - 1));
        double tmp = (f * f * f - f * sin(f * M_PI));
        return 0.5 * (1 - tmp) + 0.5;
    }
}

// MARK: Exponentially-decaying bounce easing
+ (double)BounceEaseInWithP:(double)p {
    return 1 - [FNEasingKeyFrame BounceEaseOutWithP:(1 - p)];
}

+ (double)BounceEaseOutWithP:(double)p {
    if (p < 4/11.0) {
        return (121 * p * p)/16.0;
    } else if (p < 8/11.0) {
        return (363/40.0 * p * p) - (99/10.0 * p) + 17/5.0;
    } else if (p < 9/10.0) {
        return (4356/361.0 * p * p) - (35442/1805.0 * p) + 16061/1805.0;
    } else {
        return (54/5.0 * p * p) - (513/25.0 * p) + 268/25.0;
    }
}

+ (double)BounceEaseInOutWithP:(double)p {
    if (p < 0.5) {
        return 0.5 * [FNEasingKeyFrame BounceEaseInWithP:(p*2)];
    } else {
        return 0.5 * [FNEasingKeyFrame BounceEaseOutWithP:(p * 2 - 1)] + 0.5;
    }
}

@end
