//
//  AppDelegate.m
//  NumberProblems
//
//  Created by Dan Clawson on 3/22/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import "AppDelegate.h"

static NSInteger multiple = 8;
static NSInteger divisor = 6;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self iterateCount:4];
    
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

- (void) iterateCount: (NSInteger) count {
    // Decrement a given integer until it is zero
    
    for (NSInteger x = count; x > 0; --x) {
        NSLog(@"Iterate [%ld]", (long) x);

        NSInteger multiplied = [self multiplied:x];
        NSLog(@"Multiplied %ld by %ld to be %ld", x, multiple, multiplied);
        
        double divided = [self divided:multiplied];
        NSLog(@"Divided %ld by %ld to be %f", multiplied, divisor, (float) divided);
    }
}

- (NSInteger) multiplied: (NSInteger) input {
    // Multiple a given number by a global value
    
    return input *= multiple;
}

- (double) divided: (NSInteger) input {
    // Divide a given number by a global value
    
    double result = (float) input / divisor;
    
    return result;
}

@end
