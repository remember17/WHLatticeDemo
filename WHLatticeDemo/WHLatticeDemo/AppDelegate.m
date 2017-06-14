//
//  AppDelegate.m
//  WHLatticeDemo
//
//  Created by 吴浩 on 2017/6/14.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _window.backgroundColor = [UIColor whiteColor];
    
    _window.rootViewController = [ViewController new];
    
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
