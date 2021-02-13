//
//  NSTimer+ZWBlock.m
//  AmbaTestTool
//
//  Created by WZ on 2017/11/10.
//  Copyright © 2017年 wz. All rights reserved.
//

#import "NSTimer+WZBlock.h"

@implementation NSTimer (WZBlock)

+ (NSTimer *)wz_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block {
    
    return [self timerWithTimeInterval:interval target:self selector:@selector(timerAction:) userInfo:block repeats:YES];
}

+ (NSTimer *)wz_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block {
    
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(timerAction:) userInfo:block repeats:repeats];
}

+ (void)timerAction:(NSTimer *)timer {
    void (^timerBlock)(NSTimer *timer) = timer.userInfo;

    if(timerBlock) timerBlock(timer);
}

@end
