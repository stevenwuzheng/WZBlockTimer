//
//  WZViewController.m
//  WZBlockTimer
//
//  Created by elinkthings on 02/13/2021.
//  Copyright (c) 2021 elinkthings. All rights reserved.
//

#import "WZViewController.h"
#import "NSTimer+WZBlock.h"

@interface WZViewController ()

@end

@implementation WZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer wz_scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer *timer) {
        NSLog(@"--test");
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
