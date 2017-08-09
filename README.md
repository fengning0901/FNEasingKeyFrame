# FNEasingKeyFrame

###

// 根据总帧数和动画曲线类型直接生成动画帧序列
+ (NSArray<NSNumber*>*)keyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number;

// 根据当前进度位置与动画曲线类型生成某一帧的位置
+ (double)singleKeyFrameForAnimationType:(FNEasingKeyFrameAnimationType)type withProgressRate:(double)rate;

###
