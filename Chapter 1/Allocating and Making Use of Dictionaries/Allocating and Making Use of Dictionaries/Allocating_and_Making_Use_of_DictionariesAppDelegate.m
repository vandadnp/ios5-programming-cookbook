//
//  Allocating_and_Making_Use_of_DictionariesAppDelegate.m
//  Allocating and Making Use of Dictionaries
//
//  Created by Vandad Nahavandipoor on 07/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Allocating_and_Making_Use_of_DictionariesAppDelegate.h"

@implementation Allocating_and_Making_Use_of_DictionariesAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Override point for customization after application launch.
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window makeKeyAndVisible];
  
  /* 1 */
//NSArray *person = [[NSArray alloc] initWithObjects:
//                   @"Anthony",
//                   @"Robbins",
//                   [NSNumber numberWithUnsignedInteger:51], nil];
//
//NSLog(@"First Name = %@", [person objectAtIndex:0]);
//NSLog(@"Last Name = %@", [person objectAtIndex:1]);
//NSLog(@"Age = %@", [person objectAtIndex:2]);
  
  /* 2 */
//NSNumber *age = [NSNumber numberWithUnsignedInteger:51];
//NSDictionary *person = [[NSDictionary alloc] initWithObjectsAndKeys:
//                        @"Anthony", @"First Name",
//                        @"Robbins", @"Last Name",
//                        age, @"Age",
//                        nil];
//
//NSLog(@"First Name = %@", [person objectForKey:@"First Name"]);
//NSLog(@"Last Name = %@", [person objectForKey:@"Last Name"]);
//NSLog(@"Age = %@", [person objectForKey:@"Age"]);
                          
  /* 3 */
//NSNumber *age = [NSNumber numberWithUnsignedInteger:51];
//NSMutableDictionary *person = [[NSMutableDictionary alloc] 
//                               initWithObjectsAndKeys:
//                        @"Anthony", @"First Name",
//                        @"Robbins", @"Last Name",
//                        age, @"Age",
//                        nil];
//
//[person removeObjectForKey:@"Age"];
//
//NSLog(@"First Name = %@", [person objectForKey:@"First Name"]);
//NSLog(@"Last Name = %@", [person objectForKey:@"Last Name"]);
//NSLog(@"Age = %@", [person objectForKey:@"Age"]);
  
  /* 4 */
//NSNumber *age = [NSNumber numberWithUnsignedInteger:51];
//NSDictionary *person = [[NSDictionary alloc]  initWithObjectsAndKeys:
//                        @"Anthony", @"First Name",
//                        @"Robbins", @"Last Name",
//                        age, @"Age",
//                        nil];
//
//[person enumerateKeysAndObjectsUsingBlock:
// ^(__strong id key, __strong id obj, BOOL *stop) {
//  
//  NSLog(@"Key = %@, Object For Key = %@", key, obj);
//  
//}];

  /* 5 */
//NSNumber *age = [NSNumber numberWithUnsignedInteger:51];
//NSDictionary *person = [[NSDictionary alloc]  initWithObjectsAndKeys:
//                        @"Anthony", @"First Name",
//                        @"Robbins", @"Last Name",
//                        age, @"Age",
//                        nil];
//  
//for (id keyInDictionary in [person allKeys]){
//  
//  id objectForKey = [person objectForKey:keyInDictionary];
//  NSLog(@"Key = %@, Object For Key = %@", keyInDictionary, objectForKey);
//  
//}
  
  /* 6 */
//NSNumber *age = [NSNumber numberWithUnsignedInteger:51];
//NSDictionary *person = [[NSDictionary alloc]  initWithObjectsAndKeys:
//                        @"Anthony", @"First Name",
//                        @"Robbins", @"Last Name",
//                        age, @"Age",
//                        nil];
//  
//NSEnumerator *keys = [person keyEnumerator];
//id keyInDictionary = nil;
//
//while ((keyInDictionary = [keys nextObject]) != nil){
//  
//  id objectForKey = [person objectForKey:keyInDictionary];
//  NSLog(@"Key = %@, Object For Key = %@", keyInDictionary, objectForKey);
//  
//}
  
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  /*
   Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
   */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  /*
   Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
   If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
   */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  /*
   Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
   */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  /*
   Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
   */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  /*
   Called when the application is about to terminate.
   Save data if appropriate.
   See also applicationDidEnterBackground:.
   */
}

@end
