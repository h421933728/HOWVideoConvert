//
//  AppDelegate.m
//  HOWVideoConvert
//
//  Created by Feder on 2019/6/5.
//  Copyright © 2019 HOW. All rights reserved.
//

#import "AppDelegate.h"
#import "HOWAppMainWindowController.h"

@interface AppDelegate ()
@property (nonatomic, strong) HOWAppMainWindowController *mainWC;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self.mainWC.window center];
    [self.mainWC showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (HOWAppMainWindowController *)mainWC {
    if(!_mainWC) {
        _mainWC = [[HOWAppMainWindowController alloc] init];
    }
    return _mainWC;
}

//点击dock图标触发的回调
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    //当点击左上角关闭按钮，flay=NO，需要自己把window显示出来
    if(!flag) {
        [self.mainWC showWindow:self];
        return YES;
    }
    return NO;
}

@end
