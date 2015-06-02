//
//  AppDelegate.m
//  LabelTextDisplayToTop
//
//  Created by lanou3g on 15/6/2.
//  Copyright (c) 2015年 朝夕. All rights reserved.
//

#import "AppDelegate.h"
#import "MyUILabel.h"
@interface AppDelegate ()
@property (nonatomic, retain) MyUILabel *myUILabel;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    _myUILabel = [[MyUILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 300)];
    _myUILabel.backgroundColor = [UIColor redColor];
    _myUILabel.text = @"以前我只能居中显示,现在我长本事了可以靠近label的顶端显示哦";
    _myUILabel.numberOfLines = 0;
    
    
    //    //自适应高度
    //    _myUILabel.lineBreakMode = NSLineBreakByWordWrapping;
    //    _myUILabel.font = [UIFont fontWithName:@"Arial" size:20];
    //    CGSize size = CGSizeMake(200, 1000);
    //    UIFont *fonts = [UIFont fontWithName:@"Arial" size:20];
    //    //该方法已经在7.0之后被弃用
    //    CGSize msgSize = [_myUILabel.text sizeWithFont:fonts constrainedToSize:size];
    //    [_myUILabel setFrame:CGRectMake(100, 100, 200, msgSize.height)];
    
    [_window addSubview:_myUILabel];
    [_myUILabel release];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
