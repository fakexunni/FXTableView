//
//  AppDelegate.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *vc = [[ViewController alloc] init];
    _window = [[UIWindow alloc] init];
    _window.rootViewController = vc;
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    return YES;
}


@end
