//
//  Allocating_and_Making_Use_of_ArraysAppDelegate.m
//  Allocating and Making Use of Arrays
//
//  Created by Vandad Nahavandipoor on 06/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Allocating_and_Making_Use_of_ArraysAppDelegate.h"

@implementation Allocating_and_Making_Use_of_ArraysAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Override point for customization after application launch.
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window makeKeyAndVisible];
  
  /* 1 */
//NSString *stringObject = @"My String";
//NSNumber *signedNumber = [NSNumber numberWithInteger:-123];
//NSNumber *unsignedNumber = [NSNumber numberWithUnsignedInteger:123];
//
//NSArray *array = [[NSArray alloc] initWithObjects:
//                  stringObject,
//                  signedNumber,
//                  unsignedNumber];
//
//NSLog(@"array = %@", array);
  
  /* 2 */
//NSString *stringObject = @"My String";
//NSNumber *signedNumber = [NSNumber numberWithInteger:-123];
//NSNumber *unsignedNumber = [NSNumber numberWithUnsignedInteger:123];
//
//NSArray *array = [NSArray arrayWithObjects:
//                  stringObject,
//                  signedNumber,
//                  unsignedNumber, nil];
//  
//NSLog(@"array = %@", array);
  
  /* 3 */  
//NSString *stringObject = @"My String";
//NSNumber *signedNumber = [NSNumber numberWithInteger:-123];
//NSNumber *unsignedNumber = [NSNumber numberWithUnsignedInteger:123];
//  
//NSArray *array = [NSArray arrayWithObjects:
//                  stringObject,
//                  signedNumber,
//                  unsignedNumber,nil];
//
//NSUInteger counter = 0;
//for (counter = 0;
//     counter < [array count];
//     counter++){
//  
//  id object = [array objectAtIndex:counter];
//  NSLog(@"Object = %@", object);
//  
//}
  
  /* 4 */
//NSString *stringObject = @"My String";
//NSNumber *signedNumber = [NSNumber numberWithInteger:-123];
//NSNumber *unsignedNumber = [NSNumber numberWithUnsignedInteger:123];
//
//NSArray *array = [NSArray arrayWithObjects:
//                  stringObject,
//                  signedNumber,
//                  unsignedNumber,nil];
//
//for (id object in array){
//  NSLog(@"Object = %@", object);
//}

  /* 5 */
//NSString *stringObject = @"My String";
//NSNumber *signedNumber = [NSNumber numberWithInteger:-123];
//NSNumber *unsignedNumber = [NSNumber numberWithUnsignedInteger:123];
//
//NSArray *anotherArray = [[NSArray alloc] initWithObjects:
//                         @"String 1",
//                         @"String 2",
//                         @"String 3", nil];
//
//NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:
//                         stringObject,
//                         signedNumber, nil];
//
//[array addObject:unsignedNumber];
//[array removeObject:signedNumber];
//[array addObjectsFromArray:anotherArray];
//
//for (id object in array){
//  NSLog(@"Object = %@", object);
//}
  
  /* 6 */
//  NSArray *myArray = [[NSArray alloc] initWithObjects:
//                      @"String 1",
//                      @"String 2",
//                      @"String 3",
//                      @"String 4", nil];
//  
//  [myArray enumerateObjectsUsingBlock:
//   ^(__strong id obj, NSUInteger idx, BOOL *stop) {
//    
//     //NSLog(@"Object = %@", obj);
//     
//  }];
    

  /* 7 */
  NSMutableArray *myArray = [[NSMutableArray alloc] initWithObjects:
                      @"String 2",
                      @"String 4",
                      @"String 1",
                      @"String 3", nil];
  [myArray sortUsingComparator:
   ^NSComparisonResult(__strong id obj1, __strong id obj2) {
     
    NSString *string1 = (NSString *)obj1;
    NSString *string2 = (NSString *)obj2;
    
    return [string1 compare:string2];
    
  }];
  
  NSLog(@"myArray = %@", myArray);

  NSLog(@"%d", [@"String 3" compare:@"String 1"]);
  
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
