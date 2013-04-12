//
//  AppDelegate.m
//  AOC1
//
//  Created by Justin Tilley on 4/12/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Variables
    bool strike = false;
    float swing = 3.3;
    int ball = 95;
    int innings = 1;
    //Casting
    float distance = (float)ball * swing;
    
    NSLog(@"Its opening day at Fenway Park.");
    
    //While Loop
    while(innings<10)
    {
        NSLog(@"It is the %d inning.", innings);
        innings++;
    }
    //For Loop
    for(int out=0; out<3; out++)
    {
        NSLog(@"There is %d outs.", out);
    }
    
    NSLog(@"You step to the plate.");
    //Output of integer
    NSLog(@"The Pitcher throws the ball at %d mph.", ball);
    
    //AND Condition
    if((ball > 65) && (swing > 3))
    {
        NSLog(@"You hit the ball");
        //Nested for loop
        for(int x=1; x<4; x++)
        {
            NSLog(@"You round %d base.", x);
        }
    }//OR condition
    else if ((distance >= 150) || (strike == true))
    {
        NSLog(@"You're OUT!");
    }
    else
    {
        NSLog(@"The pitch was a ball.");
    }
    //Output of casted float
    NSLog(@"The ball is hit and goes %.2f feet.", distance);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
