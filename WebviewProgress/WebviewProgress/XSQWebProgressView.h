//
//  XSQWebProgressView.h
//  WebviewProgress
//
//  Created by xiaoshunliang on 2016/11/28.
//  Copyright © 2016年 bodaokeji. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface XSQWebProgressView : CAShapeLayer
- (void)speedLoad;
- (void)startLoad;
- (void)closeTimer;

@end
