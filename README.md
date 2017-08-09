# FNEasingKeyFrame

        // 根据总帧数和动画曲线类型直接生成动画帧序列做循环动画
        + (NSArray<NSNumber*>*)circleKeyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number;

    // 根据总帧数和动画曲线类型直接生成动画帧序列
    + (NSArray<NSNumber*>*)keyFramesForAnimationType:(FNEasingKeyFrameAnimationType)type withNumberOfKeyFrames:(NSInteger)number;
    
    // 根据当前进度位置与动画曲线类型生成某一帧的位置
    + (double)singleKeyFrameForAnimationType:(FNEasingKeyFrameAnimationType)type withProgressRate:(double)rate;

<p align="center">
  <img src="https://user-images.githubusercontent.com/14304699/29125436-467fe75c-7d4e-11e7-8da1-9869d27b5625.jpg">
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/14304699/29126410-e24ae950-7d50-11e7-8559-31a79cdd6978.jpg">
</p>
