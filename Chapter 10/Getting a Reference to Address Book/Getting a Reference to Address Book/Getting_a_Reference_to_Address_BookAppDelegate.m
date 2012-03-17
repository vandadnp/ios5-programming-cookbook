//
//  Getting_a_Reference_to_Address_BookAppDelegate.m
//  Getting a Reference to Address Book
//
//  Created by Vandad Nahavandipoor on 21/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Getting_a_Reference_to_Address_BookAppDelegate.h"

@implementation Getting_a_Reference_to_Address_BookAppDelegate

@synthesize window = _window;

- (BOOL)            application:(UIApplication *)application
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  
  ABAddressBookRef addressBook = ABAddressBookCreate();
  
  if (addressBook != nil){
    NSLog(@"Successfully accessed the address book.");
    
    /* Work with the address book here */
    
    /* Let's see if we have made any changes to the
     address book or not, before attempting to save it */
    
    if (ABAddressBookHasUnsavedChanges(addressBook)){
      /* Now decide if you want to save the changes to
       the address book */
      NSLog(@"Changes were found in the address book.");
      
      BOOL doYouWantToSaveChanges = YES;
      
      /* We can make a decision to save or revert the
       address book back to how it was before */
      if (doYouWantToSaveChanges){
        
        CFErrorRef saveError = NULL;
        
        if (ABAddressBookSave(addressBook, &saveError)){
          /* We successfully saved our changes to the
           address book */
        } else {
          /* We failed to save the changes. You can now
           access the [saveError] variable to find out
           what the error is */
        }
        
      } else {
        
        /* We did NOT want to save the changes to the address
         book so let's revert it to how it was before */
        ABAddressBookRevert(addressBook);
        
      }
      
    } else {
      /* We have not made any changes to the address book */
      NSLog(@"No changes to the address book.");
    }
    
    CFRelease(addressBook);
    
  } else {
    NSLog(@"Could not access the address book.");
  }
  
  self.window = [[UIWindow alloc] initWithFrame:
                 [[UIScreen mainScreen] bounds]];
  
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
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
