//
//  HOWBaseViewController.m
//  HOWVideoConvert
//
//  Created by Feder on 2019/6/8.
//  Copyright © 2019 HOW. All rights reserved.
//

#import "HOWBaseViewController.h"
#import "HOWBaseView.h"

@interface HOWBaseViewController ()

@end

@implementation HOWBaseViewController

//纯代码创建的NSViewController，必须在loadView中创建view才会触发viewDidLoad
- (void)loadView {
    self.view = [[HOWBaseView alloc] initWithFrame:NSZeroRect];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
