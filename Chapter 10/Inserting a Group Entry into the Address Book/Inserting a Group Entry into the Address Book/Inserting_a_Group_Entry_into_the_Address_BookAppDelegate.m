//
//  Inserting_a_Group_Entry_into_the_Address_BookAppDelegate.m
//  Inserting a Group Entry into the Address Book
//
//  Created by Vandad Nahavandipoor on 21/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Inserting_a_Group_Entry_into_the_Address_BookAppDelegate.h"

@implementation Inserting_a_Group_Entry_into_the_Address_BookAppDelegate

@synthesize window = _window;

- (ABRecordRef) newGroupWithName:(NSString *)paramGroupName
                   inAddressBook:(ABAddressBookRef)paramAddressBook{
  
  ABRecordRef result = NULL;
  
  if (paramAddressBook == NULL){
    NSLog(@"The address book is nil.");
    return NULL;
  }
  
  result = ABGroupCreate();
  
  if (result == NULL){
    NSLog(@"Failed to create a new group.");
    return NULL;
  }
  
  BOOL couldSetGroupName = NO;
  CFErrorRef error = NULL;
  
  couldSetGroupName = ABRecordSetValue(result,
                                       kABGroupNameProperty,
                                       (__bridge CFTypeRef)paramGroupName,
                                       &error);
  
  if (couldSetGroupName == NO){
    CFRelease(result);
    NSLog(@"Failed to set the name of the group.");
    return NULL;
  }
  
  BOOL couldAddRecord = NO;
  CFErrorRef couldAddRecordError = NULL;
  
  couldAddRecord = ABAddressBookAddRecord(paramAddressBook, 
                                          result,
                                          &couldAddRecordError);
  
  if (couldAddRecord == NO){
    CFRelease(result);
    NSLog(@"Could not add a new group.");
    return NULL;
  }
  
  NSLog(@"Successfully added the new group.");
  
  if (ABAddressBookHasUnsavedChanges(paramAddressBook)){
    BOOL couldSaveAddressBook = NO;
    CFErrorRef couldSaveAddressBookError = NULL;
    couldSaveAddressBook = ABAddressBookSave(paramAddressBook, 
                                             &couldSaveAddressBookError);
    if (couldSaveAddressBook){
      NSLog(@"Successfully saved the address book.");
    } else {
      CFRelease(result);
      result = NULL;
      NSLog(@"Failed to save the address book.");
    }
  } else {
    CFRelease(result);
    result = NULL;
    NSLog(@"No unsaved changes.");
  }
  
  return result;
  
}


- (BOOL)            application:(UIApplication *)application
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  
  ABAddressBookRef addressBook = ABAddressBookCreate();
  
  if (addressBook != nil){
    NSLog(@"Successfully accessed the address book.");
    
    ABRecordRef personalCoachesGroup =
    [self newGroupWithName:@"Personal Coaches"
             inAddressBook:addressBook];
    
    if (personalCoachesGroup != NULL){
      NSLog(@"Successfully created the group.");
      CFRelease(personalCoachesGroup);
    } else {
      NSLog(@"Could not create the group.");
    }
    
    CFRelease(addressBook);
    
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
