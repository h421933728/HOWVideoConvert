//
//  HOWMainViewController.m
//  HOWVideoConvert
//
//  Created by Feder on 2019/6/8.
//  Copyright © 2019 HOW. All rights reserved.
//

#import "HOWMainViewController.h"

@implementation HOWMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self commonInit];
}

- (void)commonInit
{
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor redColor].CGColor;
    self.view.frame = CGRectMake(0, 0, 800, 600);
}
@end
