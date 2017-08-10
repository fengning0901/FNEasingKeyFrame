//
//  ViewController.m
//  FNEasingKeyFrame
//
//  Created by 冯宁 on 2017/8/9.
//  Copyright © 2017年 demo. All rights reserved.
//

#import "ViewController.h"
#import "FNEasingKeyFrame.h"
#import "PathView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
}

- (void)setupSubviews {
    CGFloat sw = [UIScreen mainScreen].bounds.size.width;
    UIScrollView* scroll = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scroll];
    CGFloat top = 20;
    NSInteger boxPerLine = 2;
    CGFloat padding = sw * 0.1 / (boxPerLine + 1);
    CGFloat w = sw * 0.9 / boxPerLine;
    for (int i = 1; i < 32; i++) {
        for (int n = 0; n < boxPerLine && i < 32; n ++ ) {
            UIView* view = [[PathView alloc] initWithPoints:[FNEasingKeyFrame circleKeyFramesForAnimationType:i withNumberOfKeyFrames:120]];
            view.frame = CGRectMake(padding + (w + padding) * n, top + padding, w, w);
            UILabel* label = [UILabel new];
            label.text = [NSString stringWithFormat:@"%d",i];
            label.frame = CGRectMake(5, 5, 40, 20);
            label.font = [UIFont systemFontOfSize:12];
            [view addSubview:label];
            [scroll addSubview:view];
            i++;
        }
        top += padding + w;
    }
    CGFloat height = top + padding;
    scroll.contentSize = CGSizeMake(sw, height);
}

@end
