//
//  NSTimer+ZWBlock.h
//  AmbaTestTool
//
//  Created by WZ on 2017/11/10.
//  Copyright © 2017年 wz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (WZBlock)

+ (NSTimer *)wz_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

+ (NSTimer *)wz_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

@end
