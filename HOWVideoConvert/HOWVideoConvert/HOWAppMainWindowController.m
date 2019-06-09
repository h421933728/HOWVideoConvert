//
//  HOWAppMainWindowController.m
//  HOWVideoConvert
//
//  Created by Feder on 2019/6/5.
//  Copyright © 2019 HOW. All rights reserved.
//

#import "HOWAppMainWindowController.h"
#import "HOWMainViewController.h"

@interface HOWAppMainWindowController ()

@end

@implementation HOWAppMainWindowController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)commonInit
{
    NSUInteger style = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;
    NSWindow *mainWindow = [[NSWindow alloc]initWithContentRect:NSZeroRect styleMask:style backing:NSBackingStoreBuffered defer:YES];
    mainWindow.contentViewController = [[HOWMainViewController alloc] init];
    mainWindow.title = @"我是标题";
//    mainWindow.titleVisibility = NSWindowTitleHidden;
//    mainWindow.titlebarAppearsTransparent = YES;
    mainWindow.backgroundColor = [NSColor greenColor];
    mainWindow.minSize = CGSizeMake(800, 622);
//    mainWindow.styleMask = self.window.styleMask | NSWindowStyleMaskFullSizeContentView;
    
    self.window = mainWindow;
}

@end
